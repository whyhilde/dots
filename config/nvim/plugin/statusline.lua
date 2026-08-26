local theme = {
  normal = {
    a = {
      bg = "#181825",
      fg = "#cdd6f4",
    },
  },
}


require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = {
      left = "",
      right = "",
    },
    section_separators = {
      left = "",
      right = "",
    },
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        "mode",
      },
      {
        "filename",
        file_status = false,
        newfile_status = false,
        path = 0,
        symbols = {
          modified = "(+)",
          readonly = "(-)",
          unnamed = "no name",
          newfile = "new",
        },
      },
      {
        "progress",
      },
      {
        "diagnostics",
        sources = {
          "nvim_diagnostic",
        },
        sections = {
          "error",
          "warn",
          "info",
          "hint",
        },
        symbols = {
          error = "E",
          warn = "W",
          info = "I",
          hint = "H",
        },
        colored = true,
        update_in_insert = false,
        always_visible = false,
      },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      {
        "branch",
        icon = "git",
      },
      {
        "diff",
        colored = true,
        symbols = {
          added = "+",
          modified = "~",
          removed = "-",
        },
      },
    },
  },
})
