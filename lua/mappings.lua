require "nvchad.mappings"

local set = vim.keymap.set
local del = vim.keymap.del

set("n", "<leader>n", "<cmd>enew<CR>", { desc = "buffer new" })
del("n", "<leader>b")

set("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
del("n", "<leader>x")
del("n", "<leader>ch")
del("n", "<leader>cm")

set("n", "<leader>bc", function()
  require("nvchad.tabufline").closeAllBufs(false)
end, { desc = "close all buffers except current" })
set("n", "<leader>bC", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "close all buffers" })

set("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "toggle debug ui" })
set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "toggle debug breakpoint" })
set("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "start/stop debug" })
set("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "debug step over" })

-- set("n", "<leader>g", { desc = "lazygit" })
-- set("n", "<leader>l", { desc = "LSP" })

set("n", "<leader>q", "<cmd>confirm q<CR>", { desc = "quit window" })
set("n", "<leader>Q", "<cmd>confirm qall<CR>", { desc = "exit nvim" })

set("n", "\\", "<cmd>vsplit<CR>", { desc = "vertical split" })
set("n", "|", "<cmd>split<CR>", { desc = "horizontal split" })

del("n", "<leader>v")
del("n", "<leader>rn")
del("n", "<leader>pt")

set("n", "<leader>p", "<cmd>Mason<CR>", { desc = "mason" })

set({ "n", "v" }, "<leader>h", "<cmd>NvCheatsheet<CR>", { desc = "mappings" })
