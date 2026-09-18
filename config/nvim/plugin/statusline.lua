local theme = {
  normal = {
    a = {
      bg = "#cba6f7",
      fg = "#181825",
    },
    b = {
      bg = "#181825",
      fg = "#cdd6f4",
    },
  },
  insert = {
    a = {
      bg = "#a6e3a1",
      fg = "#181825",
    },
    -- b = {bg = colors.lightgray, fg = colors.white},
  },
  visual = {
    a = {bg = "#89b4fa", fg = "#181825",},
    -- b = {bg = colors.lightgray, fg = colors.white},
  },
  replace = {
    a = {bg = "#f38ba8", fg = "#181825", gui = 'bold'},
    -- b = {bg = colors.lightgray, fg = colors.white},
  },
  command = {
    a = {bg = "#f9e2af", fg = "#181825", gui = 'bold'},
    -- b = {bg = colors.lightgray, fg = colors.white},
  },
  -- normal = {
  --   a = {
  --     bg = "#181825",
  --     fg = "#cdd6f4",
  --   },
  -- },
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
    },
    lualine_b = {
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
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
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
    lualine_z = {},
  },
})

-- require('modicator').setup()
