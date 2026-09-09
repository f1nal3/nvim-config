return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    lazy = false,

    opts = {
      keymap = {
        preset = "default",

        ["<CR>"] = { "accept", "fallback" },

        ["<Tab>"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },

        ["<S-Tab>"] = {
          "select_prev",
          "snippet_backward",
          "fallback",
        },
      },
    },
  },
}

