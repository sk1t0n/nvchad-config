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

local js_ts_config = {
  {
    type = "pwa_node",
    request = "launch",
    name = "Launch JS/TS file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
  {
    type = "pwa_node",
    request = "attach",
    name = "Attach JS/TS",
    processId = require("dap.utils").pick_process,
    cwd = "${workspaceFolder}",
  },
}

dap.configurations = {
  javascript = js_ts_config,
  typescript = js_ts_config,
  php = {
    {
      name = "Launch built-in PHP server and debug",
      type = "php",
      request = "launch",
      runtimeArgs = {
        "-S",
        "localhost:8000",
        "-t",
        ".",
      },
      port = 9003,
      serverReadyAction = {
        action = "openExternally",
      },
    },
    {
      name = "Debug current PHP script in console",
      type = "php",
      request = "launch",
      program = "${file}",
      cwd = "${fileDirname}",
      externalConsole = false,
      port = 9003,
    },
    {
      name = "Listen for Xdebug",
      type = "php",
      request = "launch",
      port = 9003,
    },
  },
}

dap.adapters = {
  pwa_node = {
    type = "executable",
    command = bin_path .. "js-debug-adapter" .. ext,
    args = {},
  },
  php = {
    type = "executable",
    command = bin_path .. "php-debug-adapter" .. ext,
    args = {},
  },
}
