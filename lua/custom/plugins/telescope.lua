return {
  'nvim-telescope/telescope.nvim',
  tag = "0.1.6",
  dependencies = {
    'nvim-lua/plenary.nvim',
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-smart-history.nvim" },
  },
  config = function()
    require "custom.telescope"
  end,
}
 