vim.lsp.config("pyright", {
  settings = {
    python = {
      pythonPath = (function()
        local cwd = vim.fn.getcwd()
        local venv_path = cwd .. "/.venv/bin/python"
        if vim.fn.executable(venv_path) == 1 then
          return venv_path
        end
        return vim.fn.exepath("python3") or "python"
      end)(),
    },
  },
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.stdpath("config") .. "/lua",
        },
        checkThirdParty = false,
      },
    },
  },
})

vim.lsp.enable("pyright")
vim.lsp.enable("lua_ls")


-- local cmp = require("cmp")
-- require("cmp").setup({
--   window = {
--     completion = cmp.config.window.bordered({
--       winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:CmpCursorLine,Search:None",
--       border = "bold",
--       scrollbar = false,
--       max_height = 6,
--     }),
--     documentation = cmp.config.window.bordered({
--       border = "bold",
--       max_height = 6,
--       max_width = 25,
--     }),
--   },
--   formatting = {
--     fields = {
--       "abbr",
--       "kind",
--     },
--   },
--   mapping = cmp.mapping.preset.insert({
--     ["<c-j>"] = cmp.mapping.select_next_item(),
--     ["<c-k>"] = cmp.mapping.select_prev_item(),
--     ["<c-space>"] = cmp.mapping.complete(),
--     ["<c-c>"] = cmp.mapping.abort(),
--     ["<cr>"] = cmp.mapping.confirm({ select = true }),
--   }),
--   sources = cmp.config.sources({
--     { name = "nvim_lsp" },
--     { name = "buffer" },
--     -- { name = "path" },
--   }),
-- })
