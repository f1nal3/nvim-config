return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      options = {
        theme = "cyberdream",
        component_separators = { left = '|', right = '|'},
        section_separators = "",
        globalstatus = true,
        icons_enabled = true,
        draw_empty = true,
      },



      sections = {
        lualine_a = {
          "mode",
        },

        lualine_b = {
          "branch",
          "diagnostics",
        },

        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },

        lualine_x = {
          "filetype",
        },

        lualine_y = {
          "searchcount",
        },

        lualine_z = {
          "location",
        },
      },
    },
  },
}

