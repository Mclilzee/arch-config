return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = require("cmp").mapping.confirm({ select = true }),
      })
    end,
  },
}