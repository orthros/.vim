return {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "awesome", -- awesomewm
          "client", -- awesomewm
          "screen", -- awesomewm
          "root", -- awesomewm
          "vim" -- Vim files
        },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          -- Commenting this out as it confuses the LSP when you
          -- try to go to definition
          -- [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}
