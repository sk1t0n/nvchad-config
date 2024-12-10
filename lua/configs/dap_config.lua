local ok, dap = pcall(require, "dap")
local path_pkg = vim.fn.stdpath "data" .. "/mason/packages/"

if os.getenv "OS" == "Windows_NT" then
  path_pkg = path_pkg:gsub("\\", "/")
end

if not ok then
  return
end

dap.configurations = {
  php = {},
}

dap.adapters = {
  php = {
    type = "executable",
    command = "node",
    args = { path_pkg .. "php-debug-adapter/extension/out/phpDebug.js" },
  },
}
