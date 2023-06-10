return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    'mbbill/undotree',
    event = "User AstroFile"
  },
  {
    'navarasu/onedark.nvim',
    config = function()
      require("onedark").setup({
        style = "deep",
        tildes = true,
      })
    end,
  },
  "neanias/everforest-nvim",
  "NLKNguyen/papercolor-theme",
  "Rigellute/rigel",
  "bluz71/vim-nightfly-colors",
}
