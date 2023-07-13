vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

-- UndoTree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- ALE 
vim.g.fix_on_save = 1

vim.g.ale_fixers = {
  ["*"] = { "remove_trailing_lines", "trim_whitespace" },
  ['javascript'] = { 'eslint' },
  ['typescript'] = { 'eslint' },
  ['typescriptreact'] = { 'eslint' },
}

vim.keymap.set('n', '<leader>lf', vim.cmd.ALEFix)
