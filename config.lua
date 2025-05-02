-- general
lvim.log.level = "warn"
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["ff"] = ":HopWord<CR>"
lvim.keys.normal_mode["<A-c>"] = ":Comment<CR>"
lvim.keys.normal_mode["fw"] = ":HopPattern<CR>"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<CR>"
lvim.keys.normal_mode["<A-k>"] = nil
lvim.keys.normal_mode["<A-j>"] = nil

lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false

lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false
lvim.keys.visual_block_mode["J"] = false
lvim.keys.visual_block_mode["K"] = false

lvim.keys.visual_block_mode["<S-k>"] = ":m '<-2<CR>gv-gv"
lvim.keys.visual_block_mode["<S-j>"] = ":m '>+1<CR>gv-gv"

lvim.plugins =  {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
}

