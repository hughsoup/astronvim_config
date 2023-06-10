-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>u"] = {vim.cmd.UndotreeToggle, desc = "Toggle Undo Tree"},
    -- I like to scroll and keep things centers
    ["J"] = { "8jzz" },
    ["K"] = { "8kzz" },
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["<leader>y"] = { [["+y]] },
    ["<leader>Y"] = { [["+Y]] },
    ["<leader>d"] = { "_d" },
    ["<leader>frt"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Find and Replace" },
    ["<leader>--"] = { ":sp<cr>" },
    ["<leader>[]"] = { ":vs<cr>" },
    ["<leader>t"] = {":ToggleTerm size=20 direction=horizontal<cr>", desc = "Open Terminal" },
    ["<C-`>"] = { "<C-w>b"}
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>" },
    ["<C-`>"] = { "<cmd>wincmd p<cr>" },
    ["<leader>t"] = {"<cmd>:ToggleTerm size=20 direction=horizontal<cr>", desc = "Open Terminal" },
  },
  v = {
    ["J"] = ":m '>+1<CR>gv=gv",
    ["K"] = ":m '<-2<CR>gv=gv",
    ["<leader>y"] = { [["+y]] },
    ["<leader>d"] = { "_d" },
  }
}
