return {
  -- PHP Language Server (LSP)
  {
    "phpactor/phpactor",
    ft = "php",
    build = "composer install --no-dev --optimize-autoloader",
  },

  -- Laravel-специфичные помощники
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-dotenv",
    },
    cmd = { "Laravel" },
    config = function()
      require("laravel").setup()
      require("telescope").load_extension("laravel")
    end,
  },

  -- Blade-подсветка
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },

  -- Дополнительные PHP-тулы
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "php", "blade" },
    },
  },
}
