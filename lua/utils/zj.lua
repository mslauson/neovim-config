local M = {}

M.new_vertical = function()
  local buffer_directory = vim.fn.expand("%:p:h")
  local cmd = "zellij action new-pane -d right --cwd " .. vim.fn.shellescape(buffer_directory)
  vim.fn.system(cmd)
end

M.new_horizontal = function()
  local buffer_directory = vim.fn.expand("%:p:h")
  local cmd = "zellij action new-pane -d down --cwd " .. vim.fn.shellescape(buffer_directory)
  vim.fn.system(cmd)
end

M.new_floating = function()
  local buffer_directory = vim.fn.expand("%:p:h")
  local cmd = "zellij action new-pane -f --cwd " .. vim.fn.shellescape(buffer_directory)
  vim.fn.system(cmd)
end

return M
