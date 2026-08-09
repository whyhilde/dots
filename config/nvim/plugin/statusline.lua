vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

local theme = {
  normal = {
    a = {
      bg = "#b4befe",
      fg = "#181825",
    },
    -- b = {bg = colors.lightgray, fg = colors.white},
    -- c = {bg = colors.darkgray, fg = colors.gray}
  },
  -- insert = {
  --   a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
  --   b = {bg = colors.lightgray, fg = colors.white},
  --   c = {bg = colors.lightgray, fg = colors.white}
  -- },
  -- visual = {
  --   a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
  --   b = {bg = colors.lightgray, fg = colors.white},
  --   c = {bg = colors.inactivegray, fg = colors.black}
  -- },
  -- replace = {
  --   a = {bg = colors.red, fg = colors.black, gui = 'bold'},
  --   b = {bg = colors.lightgray, fg = colors.white},
  --   c = {bg = colors.black, fg = colors.white}
  -- },
  -- command = {
  --   a = {bg = colors.green, fg = colors.black, gui = 'bold'},
  --   b = {bg = colors.lightgray, fg = colors.white},
  --   c = {bg = colors.inactivegray, fg = colors.black}
  -- },
  -- inactive = {
  --   a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
  --   b = {bg = colors.darkgray, fg = colors.gray},
  --   c = {bg = colors.darkgray, fg = colors.gray}
  -- }
}

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    -- ignore_focus = {},
    -- always_divide_middle = true,
    -- always_show_tabline = true,
    globalstatus = true,
  --   refresh = {
  --     statusline = 1000,
  --     tabline = 1000,
  --     winbar = 1000,
  --     refresh_time = 16, -- ~60fps
  --     events = {
  --       'WinEnter',
  --       'BufEnter',
  --       'BufWritePost',
  --       'SessionLoadPost',
  --       'FileChangedShellPost',
  --       'VimResized',
  --       'Filetype',
  --       'CursorMoved',
  --       'CursorMovedI',
  --       'ModeChanged',
  --     },
  --   }
  },
  sections = {
    lualine_a = {
      'mode',
              {
          'filename',
          file_status = false,      -- Displays file status (readonly status, modified status)
          newfile_status = false,  -- Display new file status (new file means no write after created)
          path = 0,                -- 0: Just the filename
                                   -- 1: Relative path
                                   -- 2: Absolute path
                                   -- 3: Absolute path, with tilde as the home directory
                                   -- 4: Filename and parent dir, with tilde as the home directory
    
          -- shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                                   -- for other components. (terrible name, any suggestions?)
                                   -- It can also be a function that returns
                                   -- the value of `shorting_target` dynamically.
          symbols = {
            modified = '(+)',      -- Text to show when the file is modified.
            readonly = '(-)',      -- Text to show when the file is non-modifiable or readonly.
            unnamed = 'No name', -- Text to show for unnamed buffers.
            newfile = 'New',     -- Text to show for newly created file before first write
          }
        },
      -- {
      --   "filename",
      -- },
      'diagnostics'
    },
    lualine_b = {
      },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      {
        "branch",
        icon = "Git",
      },
        {
          'diff',
          colored = false, -- Displays a colored diff status if set to true
          -- diff_color = {
          --   -- Same color values as the general color option can be used here.
          --   added    = 'LuaLineDiffAdd',    -- Changes the diff's added color
          --   modified = 'LuaLineDiffChange', -- Changes the diff's modified color
          --   removed  = 'LuaLineDiffDelete', -- Changes the diff's removed color you
          -- },
          symbols = {added = '+', modified = '~', removed = '-'}, -- Changes the symbols used by the diff.
          source = nil, -- A function that works as a data source for diff.
                        -- It must return a table as such:
                        --   { added = add_count, modified = modified_count, removed = removed_count }
                        -- or nil on failure. count <= 0 won't be displayed.
        },
      {
        "%l:%c",
      },
    },
  },
  -- inactive_sections = {
  --   lualine_a = {},
  --   lualine_b = {},
  --   lualine_c = {'filename'},
  --   lualine_x = {'location'},
  --   lualine_y = {},
  --   lualine_z = {}
  -- },
  -- tabline = {},
  -- winbar = {},
  -- inactive_winbar = {},
  -- extensions = {}
})
