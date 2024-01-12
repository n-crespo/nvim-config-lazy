return {
  -- below is needed when using transparent background
  -- default LazyVim plugin for notifications
  "rcarriga/nvim-notify",
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("notify").setup({
      background_colour = "#0e0e0e",
    })
    vim.cmd("hi lualine_c_normal guibg=NONE")
    vim.cmd("hi lualine_x_normal guibg=NONE")
  end,
}
