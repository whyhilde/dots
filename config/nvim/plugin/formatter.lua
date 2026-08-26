require("conform").setup({
  formatters_by_ft = {
    python = {
      "ruff_format",
      "ruff_organize_imports",
    },
  },
  default_format_opts = {
    lsp_format = "fallback",
  },
  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 500,
  },
})
