return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 25, -- how many suggestions should be shown in the list?
        },
        presets = {
          operators = true, -- adds help for operators like d, y, ...
          motions = true, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },
      defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+goto" },
        ["<Leader>b"] = { name = "+Buffer" },
        ["<Leader>c"] = { name = "+Code" },
        ["<Leader>f"] = { name = "+Find" },
        -- ["<Leader>gh"] = { name = "+Hunks" },
        ["<Leader>g"] = { name = "+Git and Goyo" },
        ["<Leader>l"] = { name = "+Lazy" },
        ["<Leader>s"] = { name = "+Search" },
        -- ["<Leader><tab>"] = { name = "+Tabs" },
        ["<Leader>u"] = { name = "+UI" },
        ["<Leader>w"] = { name = "+Window" },
        ["<Leader>m"] = { name = "+Markdown" },
        ["<Leader>j"] = { name = "+Java" },
        ["<Leader>p"] = { name = "+Python" },
        ["<Leader>q"] = { name = "+Sessions" },
        ["<Leader>r"] = { name = "+Run" },
        ["<leader>t"] = { name = "+Table" },
        ["<Leader>R"] = { name = "+R Markdown" },
        ["<Leader>Rk"] = { name = "+R Knit" },
        ["<Leader>x"] = { name = "+Quickfix" },
        ["<Leader><Tab>"] = { name = "+Tab" },
        ["<Leader>"] = { name = "+Leader" },
        ["<Leader>sn"] = { name = "+Noice" },
        ["<Leader>gh"] = { name = "+Hunk" },
        ["<LocalLeader>"] = { name = "+Leader" },

        -- ["<Leader>Y"] = { name = "Yank History" },
        ["<LocalLeader>s"] = { name = "+Search" },
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
      },
    }
  end,
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
