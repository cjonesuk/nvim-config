function telescope_fsf_native_requires_make()
  local enabled = vim.fn.executable("make") == 1
        
  if not enabled then
    print "telescope-fzf-native.nvim: make is not available. disabling extension"
  end 

  return enabled
end


return {
  'nvim-telescope/telescope.nvim',
  tag = "0.1.6",
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 
      "nvim-telescope/telescope-fzf-native.nvim", 
      build = "make",
      cond = telescope_fsf_native_requires_make
    },
    { "nvim-telescope/telescope-smart-history.nvim" },
  },
  config = function()
    require "custom.telescope"
  end,
}
 