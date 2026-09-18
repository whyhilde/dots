local o = vim.opt
o.background = "dark"
o.backup = false
o.clipboard = "unnamedplus"
o.cursorline = true
o.encoding = "utf-8"
o.expandtab = true
o.fileencoding = "utf-8"
o.fillchars = {
  eob = " ",
  horiz = "━",
  horizdown = "┳",
  horizup = "┻",
  vert = "┃",
  verthoriz = "╋",
  vertleft = "┫",
  vertright = "┣",
}
o.hlsearch = true
o.ignorecase = true
o.incsearch = true
o.infercase = true
o.laststatus = 3
o.modelines = 0
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.ruler = false
o.scrolloff = 10
o.shiftwidth = 2
o.showmode = false
o.showtabline = 0
o.signcolumn = "yes"
o.smartcase = true
o.smartindent = true
o.smarttab = true
o.smoothscroll = true
o.softtabstop = 2
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.undofile = true
o.updatetime = 5000
o.whichwrap = ""
o.wildmode = "longest:full,full"
o.winborder = "bold"
o.wrap = false
o.writebackup = false


local options = {
  -- linebreak = true,
  -- mouse = "a",
  -- showbreak = "",
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

local g = vim.g
g.netrw_banner = 0
g.netrw_liststyle = 3
