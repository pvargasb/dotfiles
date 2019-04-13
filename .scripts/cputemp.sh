#!/bin/bash

#Only works for quad-core processors
#get cpu temps
CPU1=$( cat /sys/class/thermal/thermal_zone0/temp)
CPU2=$( cat /sys/class/thermal/thermal_zone1/temp)
CPU3=$( cat /sys/class/thermal/thermal_zone2/temp)
CPU4=$( cat /sys/class/thermal/thermal_zone3/temp)

#Calculate average
CPU=$((($CPU1+$CPU2+$CPU3+$CPU4)/4000))

#Outout average
echo $CPU
