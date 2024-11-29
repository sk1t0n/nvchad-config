local ok, dap = pcall(require, "dap")
local bin_path = vim.fn.stdpath "data" .. "/mason/bin/"

local ext = ""
if os.getenv "OS" == "Windows_NT" then
  bin_path = bin_path:gsub("\\", "/")
  ext = ".cmd"
end

if not ok then
  return
end

dap.configurations = {
  javascript = {
    {
      type = "node2",
      name = "node attach",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
    },
  },
  typescript = {
    {
      type = "node2",
      name = "node attach",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
    },
  },
  php = {
    {
      type = "php",
      request = "launch",
      name = "Listen for Xdebug",
      port = 9003,
    },
  },
}

dap.adapters = {
  node2 = {
    type = "executable",
    command = bin_path .. "node-debug2-adapter" .. ext,
    args = {},
  },
  php = {
    type = "executable",
    command = bin_path .. "php-debug-adapter" .. ext,
    args = {},
  },
}
