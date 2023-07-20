vim.g.fix_on_save = 1
vim.g.ale_javascript_eslint_executable = 'eslint_d'
vim.g.ale_javascript_eslint_use_global = 1

vim.g.ale_fixers = {
  ["*"] = { "remove_trailing_lines", "trim_whitespace" },
  ['javascript'] = { 'eslint' },
  ['typescript'] = { 'eslint' },
  ['typescriptreact'] = { 'eslint' },
}

require("which-key").register({
  ["<leader>a"] = {
    name = "+ale",
    f = { "<cmd>ALEFix<cr>", "[F]ix Lint"}
  }
})
