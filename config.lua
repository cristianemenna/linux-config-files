--[[ lvim is the global options object ]]

-- general
lvim.log.level = "warn"
lvim.lang.typescript.formatters = { { exe = "eslint" }, { exe = "prettier" } }
lvim.lang.typescript.linters = { { exe = "eslint"} }
lvim.lang.vue.formatters = { { exe = "prettier" } }
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["ff"] = ":HopWord<CR>"
lvim.keys.normal_mode["fw"] = ":HopPattern<CR>"
lvim.keys.normal_mode["<A-c>"] = ":Comment<CR>"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<CR>"
lvim.keys.normal_mode["<A-k>"] = nil
lvim.keys.normal_mode["<A-j>"] = nil

lvim.keys.visual_block_mode["<S-k>"] = ":m '<-2<CR>gv-gv"
lvim.keys.visual_block_mode["<S-j>"] = ":m '>+1<CR>gv-gv"
lvim.keys.visual_block_mode["<A-k>"] = nil
lvim.keys.visual_block_mode["<A-j>"] = nil
lvim.keys.visual_block_mode["<A-c>"] = ":Comment<CR>"

lvim.keys.insert_mode["<A-k>"] = nil
lvim.keys.insert_mode["<A-j>"] = nil

-- change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next  -- for input mode
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous

  lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next  -- for normal mode
  lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
end

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["C"] = { ":noh<CR>", "Clean Search"}
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.active = true
lvim.builtin.nvimtree.auto_open = 1
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }

-- Additional Plugins
lvim.plugins = {
  {"Iron-E/nvim-highlite"},
  {"phaazon/hop.nvim"},
  {"lunarvim/colorschemes"},
  {"folke/tokyonight.nvim"},
  {"jnurmine/Zenburn"},
  {
            "windwp/nvim-ts-autotag",
            event = "InsertEnter",
            ft = { "html", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue" },
            config = function()
              require("nvim-treesitter.configs").setup({
                 autotag = {
                     enable = true,
                     },
              })
             end
        },
    -- {"folke/tokyonight.nvim"},
    -- {
    --   "folke/trouble.nvim",
    --   cmd = "TroubleToggle",
    -- },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- }
-- lvim.autocommands.custom_groups = {
--   {"VimEnter", "*", "NvimTreeToggle"},
-- }

--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
