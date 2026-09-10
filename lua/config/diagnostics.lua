vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
  },

  signs = true,
  underline = true,

  severity_sort = true,

  update_in_insert = false,

  float = {
    border = "rounded",
    source = "if_many",
    header = "",
    prefix = " ",
    max_width = 80,
    max_height = 20,
    wrap = true,
  },
})

