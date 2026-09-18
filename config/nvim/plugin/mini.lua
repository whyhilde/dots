require("mini.ai").setup({
  custom_textobjects = nil,
  mappings = {
    around = "a",
    inside = "i",
    around_next = "an",
    inside_next = "in",
    around_last = "al",
    inside_last = "il",
    goto_left = "g[",
    goto_right = "g]",
  },
  n_lines = 50,
  search_method = "cover_or_next",
  silent = true,
})


require("mini.comment").setup({
  options = {
    ignore_blank_line = false,
    start_of_line = false,
    pad_comment_parts = true,
  },
  mappings = {
    comment = "gc",
    comment_line = "gcc",
    comment_visual = "gc",
    textobject = "gc",
  },
})


require("mini.completion").setup({
  delay = {
    completion = 100,
    info = 100,
    signature = 50,
  },
  window = {
    info = {
      height = 8,
      width = 80,
      border = nil,
    },
    signature = {
      height = 8,
      width = 80,
      border = nil,
    },
  },
  lsp_completion = {
    source_func = "completefunc",
    auto_setup = true,
    process_items = nil,
    snippet_insert = nil,
  },
  fallback_action = "<c-n>",
  mappings = {
    force_twostep = "<c-space>",
    force_fallback = "<a-space>",
    scroll_down = "<c-j>",
    scroll_up = "<c-k>",
  },
})


require("mini.extra").setup()


require("mini.icons").setup({
  style = "glyph",
  filetype = {
    c = { glyph = "", hl = "MiniIconsBlue", },
    cpp = { glyph = "", hl = "MiniIconsBlue", },
  },
})

require("mini.icons").mock_nvim_web_devicons()


require("mini.jump").setup({
  mappings = {
    forward = "f",
    backward = "F",
    forward_till = "t",
    backward_till = "T",
    repeat_jump = ";",
  },
  delay = {
    highlight = 250,
    idle_stop = 10000000,
  },
  silent = true,
})


require("mini.pairs").setup({
  modes = {
    insert = true,
    command = false,
    terminal = false,
  },
})


require("mini.pick").setup({
  delay = {
    async = 10,
    busy = 50,
  },
  mappings = {
    caret_left  = "<left>",
    caret_right = "<right>",
    choose = "<cr>",
    choose_in_split = "<c-s>",
    choose_in_tabpage = "<c-t>",
    choose_in_vsplit = "<c-v>",
    choose_marked = "<m-cr>",
    delete_char = "<bs>",
    delete_char_right = "<del>",
    delete_left = "<c-u>",
    delete_word = "<c-w>",
    mark = "<c-x>",
    mark_all = "<c-a>",
    move_down = "<c-j>",
    move_start = "<C-g>",
    move_up = "<c-k>",
    paste = "<c-r>",
    refine = "<c-space>",
    refine_marked = "<m-space>",
    scroll_down = "<c-f>",
    scroll_left = "<c-h>",
    scroll_right = "<c-l>",
    scroll_up = "<c-b>",
    stop = "<esc>",
    toggle_info = "<s-tab>",
    toggle_preview = "<tab>",
  },
  options = {
    content_from_bottom = false,
    use_cache = false,
  },
  window = {
    config = function()
      local height = math.floor(0.618 * vim.o.lines)
      local width = math.floor(0.618 * vim.o.columns)
      return {
        anchor = "NW",
        height = height,
        width = width,
        row = math.floor(0.5 * (vim.o.lines - height)),
        col = math.floor(0.5 * (vim.o.columns - width)),
        border = "bold",
      }
    end,
    prompt_caret = " ",
    prompt_prefix = " ",
  },
})

local map = vim.keymap.set
map("n", "<leader>ff", "<cmd>Pick files<cr>")
map("n", "<leader>fb", "<cmd>Pick buffers<cr>")
map("n", "<leader>fe", "<cmd>Pick explorer<cr>")
map("n", "<leader>ft", "<cmd>Pick grep_live<cr>")
map("n", "<leader>fd", "<cmd>Pick diagnostic<cr>")
map("n", "<leader>fp", "<cmd>Pick hipatterns<cr>")
map("n", "<leader>fs", "<cmd>Pick colorschemes<cr>")
map("n", "<leader>fgb", "<cmd>Pick git_branches<cr>")
map("n", "<leader>fgc", "<cmd>Pick git_commits<cr>")
map("n", "<leader>fgf", "<cmd>Pick git_files<cr>")


require("mini.starter").setup({
  autoopen = true,
  evaluate_single = true,
  items = nil,
  header = nil,
  footer = "",
  content_hooks = nil,
  query_updaters = "abcdefghijklmnopqrstuvwxyz0123456789_-.",
  silent = true,
})


require("mini.surround").setup({
  custom_surroundings = nil,
  highlight_duration = 500,
  mappings = {
    add = "sa",
    delete = "sd",
    find = "sf",
    find_left = "sF",
    highlight = "sh",
    replace = "sr",
    suffix_last = "l",
    suffix_next = "n",
  },
  n_lines = 20,
  respect_selection_type = false,
  search_method = "cover",
  silent = true,
})
