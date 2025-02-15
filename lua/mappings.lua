-- https://neovim.io/doc/user/map.html#%3Amap-verbose
-- listing a key map will also display where it was last defined
-- nvim -V1, :verbose map or :verbose map <leader>ca

require "nvchad.mappings"

local set = vim.keymap.set
local del = vim.keymap.del

-- Override mappings
-- NvChad https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua
set("n", "<leader>n", "<cmd>enew<CR>", { desc = "buffer new" })
del("n", "<leader>rn")
del("n", "<leader>ch")
set("n", "<leader>h", "<cmd>NvCheatsheet<CR>", { desc = "mappings" })
del("n", "<leader>fm")
set("n", "<C-\\>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })
del("n", "<leader>ds")
set("n", "<leader>ld", vim.diagnostic.setloclist, { desc = "LSP/Linter diagnostic loclist" })
del("n", "<leader>b")
del("n", "<leader>x")
set("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
del("n", "<C-n>")
set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "toggle Neotree" })
del("n", "<leader>ma")
set("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
del("n", "<leader>cm")
set("n", "<leader>fc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
del("n", "<leader>gt")
set("n", "<leader>fs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
del("n", "<leader>pt")
del("n", "<leader>th")
set("n", "<leader>ft", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })
del("n", "<leader>v")
-- others
del("n", "<leader>j")
del("n", "<leader>s")
del("n", "<leader>m")

-- Sessions
set("n", "<leader>ss", require("resession").save, { desc = "session save" })
set("n", "<leader>sl", require("resession").load, { desc = "session load" })
set("n", "<leader>sd", require("resession").delete, { desc = "session delete" })

-- close buffers
set("n", "<leader>bc", function()
  require("nvchad.tabufline").closeAllBufs(false)
end, { desc = "close all buffers except current" })
set("n", "<leader>bC", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "close all buffers" })

-- close windows
set("n", "<leader>q", "<cmd>confirm q<CR>", { desc = "quit window" })
set("n", "<leader>Q", "<cmd>confirm qall<CR>", { desc = "exit nvim" })

-- split windows
set("n", "\\", "<cmd>vsplit<CR>", { desc = "vertical split" })
set("n", "|", "<cmd>split<CR>", { desc = "horizontal split" })

-- resize windows
set("n", "<C-Up>", "<Cmd>resize -2<CR>", { desc = "decrease window height" })
set("n", "<C-Down>", "<Cmd>resize +2<CR>", { desc = "increase window height" })
set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "decrease window width" })
set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "increase window width" })

-- WezTerm
set("n", "<leader>ww", function()
  local input = vim.fn.input "Program: "
  local program
  local args = {}

  for arg in input:gmatch "%S+" do
    table.insert(args, arg)
  end

  program = table.remove(args, 1)
  require("wezterm").spawn(program, { args = args })
end, { desc = "WezTerm run a program with arguments" })

-- Mason
set("n", "<leader>p", "<cmd>Mason<CR>", { desc = "mason" })

-- Glow
set("n", "<leader>pm", "<cmd>Glow<CR>", { desc = "preview markdown in current buffer" })

-- Telescope
set("n", "<leader>fp", "<cmd>Telescope projects<CR>", { desc = "telescope recent projects" })

-- DAP
set("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "toggle debug ui" })
set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "toggle debug breakpoint" })
set("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "start/stop debug" })
set("n", "<leader>dd", function()
  require("dap").disconnect()
end, { desc = "disconnect debug" })
set("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "debug step into" })
set("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "debug step over" })
set("n", "<leader>dp", function()
  require("dap").step_out()
end, { desc = "debug step out" })

-- LSP
set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
set("n", "gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
set("n", "gi", vim.lsp.buf.implementation, { desc = "go to implementation" })
set("n", "<leader>ldf", vim.diagnostic.open_float, { desc = "LSP/Linter diagnostic float" })
set("n", "<leader>lr", vim.lsp.buf.references, { desc = "LSP references" })
set("n", "<leader>lR", vim.lsp.buf.rename, { desc = "LSP rename in buffer" })
set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "LSP hover" })
set("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = "LSP signature help" })
set({ "n", "v" }, "<leader>la", require("actions-preview").code_actions, { desc = "LSP code action" })
set("n", "<leader>lws", vim.lsp.buf.workspace_symbol, { desc = "LSP workspace symbol" })

-- Splitting/joining blocks of code
set("n", "<leader>rb", "<cmd>TSJToggle<CR>", { desc = "splitting/joining blocks of code" })

-- Refactoring
set({ "n", "v" }, "<leader>rr", require("refactoring").select_refactor, { desc = "select Refactor" })

--  Git
set("n", "<leader>g", "<cmd>LazyGitFilter<CR>", { desc = "LazyGit" })

-- Zen Mode
set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Zen Mode" })

-- Test Runners
set("n", "<leader>tt", "<cmd>lua require('neotest').run.run()<CR>", { desc = "run the nearest test" })
set("n", "<leader>to", require("neotest").output.open, { desc = "displays output of test" })
set("n", "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "run the current file" })
set("n", "<leader>td", "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<CR>", { desc = "run the directory test" })
set("n", "<leader>ts", require("neotest").summary.toggle, { desc = "displays test suite structure from project root" })

-- Todo comments
set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "next todo comment" })
set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "previous todo comment" })
