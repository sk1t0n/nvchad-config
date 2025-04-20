local resession = require "resession"
local session_path = vim.fn.stdpath "data" .. "/session/"
local file_exists = function(name)
  local f = io.open(name, "r")
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Only load the session if nvim was started with no args and without reading from stdin
    if vim.fn.argc(-1) == 0 and not vim.g.using_stdin and file_exists(session_path .. "last.json") then
      -- Load a special session named "last"
      resession.load "last"
    end
  end,
  nested = true,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    -- Always save a special session named "last"
    resession.save "last"
  end,
})

vim.api.nvim_create_autocmd("StdinReadPre", {
  callback = function()
    -- Store this for later
    vim.g.using_stdin = true
  end,
})
