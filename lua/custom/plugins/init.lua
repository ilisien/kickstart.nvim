-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    config = function()
      require('render-markdown').setup {}
    end,
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        -- your configuration options here
        filesystem = {
          follow_current_file = true, -- This option highlights the current file
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },
        window = {
          mappings = {
            ['<space>'] = 'none',
          },
        },
      }
    end,
  },
}
