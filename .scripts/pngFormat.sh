#!/bin/bash

#List all the formats to change
echo 'WARNING this script will delete all files except *.png'
echo '==> File extensions'
find . -type f -name "*.*" | awk -F. '{print $NF}' | sort -u | grep -v png

#Ask user to continue
read -p '==> Only defined for JPG,JPEG,PNG Continue [N,y]: ' CONTINUE

#Branching to continue
if [ "$CONTINUE" == 'Y' ] || [ "$CONTINUE" == 'y' ]; then

	echo '==> Removing spaces in filenames'
    #Remove spaces in file names
	for f in *\ *; do mv "$f" "${f// /_}"; done
    
	echo '==> Transforming files to png'
    #Convert all files to png
	mogrify -format png *.jpg
	mogrify -format png *.jpeg
	mogrify -format png *.PNG
	
    #Remove files except png
	find -type f | grep -v .png | xargs rm -v
    
    #Getting display dimensions
    read -p '==> Offset >1000:5 <1000:4 [5,4]: ' OFFSET
    if [ "$OFFSET" == '' ]; then
        OFFSET=5
    fi
    DIMENSION=$(xrandr | grep '*' | awk -v offset=$OFFSET '{print substr($1, 0, offset)}')
    echo '==> Transforming to: '
    echo "$DIMENSION"
      
    read -p '==> Continue? [N,y]: ' CONTINUE

    if [ "$CONTINUE" == 'Y' ] || [ "$CONTINUE" == 'y' ]; then
            
        #Ask for limit width
        read -p '==> Establish a limit to transform [>2000]: ' WIDTH

        if ["$WIDTH" == '']; then
            WIDTH=2000
        fi

        #Applying transformation to pictures greater than WIDTHx?
        file * | awk -v width="$WIDTH" '$5>width{print substr($1, 0, length($1) - 1)}' | xargs -I X convert -geometry $DIMENSION X X 
        exec $HOME/.scripts/magnifyPNG.sh
    else
        echo 'Exiting script'
    fi
else

	echo 'Exiting script'

fi
