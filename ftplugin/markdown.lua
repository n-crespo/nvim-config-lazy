vim.cmd([[ownsyntax on]])
vim.cmd([[setlocal cole=2]])
vim.cmd([[setlocal spelllang=en]])
vim.cmd([[setlocal nowrap!]])
vim.cmd([[setlocal spell]])

vim.keymap.set(
  "n",
  "<C-s>",
  "<cmd>TableModeRealign<cr><cmd>w<cr>",
  { desc = "Save and Format File", buffer = true, silent = true }
)
vim.keymap.set("i", "<S-Tab>", "<C-d>", { buffer = true, silent = true })
vim.keymap.set("i", "*", "**<left>", { buffer = true, silent = true })