local ok, dap = pcall(require, "dap")
local path_pkg = vim.fn.stdpath "data" .. "/mason/packages/"

if os.getenv "OS" == "Windows_NT" then
  path_pkg = path_pkg:gsub("\\", "/")
end

if not ok then
  return
end

dap.configurations = {
  php = {
    {
      name = "Xdebug (PHP)",
      type = "php",
      request = "launch",
      port = 9003,
    },
  },
  go = {
    {
      name = "Delve (GoLang)",
      type = "go",
      request = "launch",
      program = "${file}",
    },
  },
}

dap.adapters = {
  php = {
    type = "executable",
    command = "node",
    args = { path_pkg .. "php-debug-adapter/extension/out/phpDebug.js" },
  },
  go = {
    type = "server",
    host = "127.0.0.1",
    port = "8086",
    executable = {
      command = "dlv",
      args = { "dap", "-l", "127.0.0.1:8086", "--log" },
    },
  },
}
