vim.filetype.add {
    extension = {
        pl = "prolog",
        plt = "prolog",
        yay = "python",
        yuki = "prolog",
        lox = "lox",
        ll = "llvm",
    },
    pattern = {
        [".*jitlog.*"] = "pypytrace",
        [".*\\.pl$"] = "prolog",
    },
}
