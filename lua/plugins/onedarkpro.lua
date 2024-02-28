-- theme of choice
-- transparent, italic comments, custom highlights
return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  name = "onedarkpro",
  priority = 1000, -- Ensure it loads first
  opts = {
    styles = { -- For example, to apply bold and italic, use "bold,italic"
      comments = "italic", -- Style that is applied to comments
      virtual_text = "bold", -- Style that is applied to virtual text
    },
    options = {
      lualine_transparency = true, -- unneeded due to custom lualine theme
      cursorline = false, -- Use cursorline highlighting?
      transparency = true, -- Use a transparent background?
      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
      highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
      bold = true,
      italic = true,
      underline = true,
      undercurl = true,
    },
    highlights = {
      ["@markup.list.unchecked.markdown"] = { fg = "#ef696f", bg = "#22272f" },
      ["@markup.list.checked.markdown"] = { fg = "#89ca78", bg = "#22272f" },
      WhichKeyFloat = { bg = nil }, -- transparent whichkey
      FlashCurrent = { bg = "#e5c07b", fg = "#212121" },
      TabLineSel = { bg = "#22272f", bold = true }, -- cokeline
      LazyButton = { bg = "#22272f" },
      Visual = { bg = "#21272f" },
      CmpItemMenu = { fg = "#61afef" },
      Headline = { bg = "#22272f" },
      NoiceScrollbarThumb = { bg = "#22272f" },
      NoiceScrollbar = { bg = nil },
      TreeSitterContext = { bg = "#22272f" },
      TelescopeBorder = { fg = "#61afef" },
      MiniStarterItemBullet = { fg = "#61afef" },
      MiniStarterItemPrefix = { fg = "#89ca78" },
    },
  },
  config = function(_, opts)
    require("onedarkpro").setup(opts)
    vim.cmd.colorscheme("onedark_dark")
  end,
}
