vim.keymap.set("n", "<leader>pa", vim.cmd.A)
vim.keymap.set("n", "<leader>pv", vim.cmd.AV)


vim.g.projectionist_heuristics = {
    ["*"] = {
        ["*.cpp"] = {
            ["console"] = "g++ {}.cpp -o {} && ./{} && rm {} && read",
            ["make"] = "g++ {}.cpp -o {} && ./{} < input && rm {}"
        }
    },
    ["pom.xml"] = {
        ["*"] = {
            ["start"] = "./mvnw spring-boot =run"
        },
        ["src/main/java/*.java"] = {
            ["alternate"] = "src/test/java/{}Tests.java"
        },
        ["src/test/java/*Tests.java"] = {
            ["alternate"] = "src/main/java/{}.java"
        }
    }
}
