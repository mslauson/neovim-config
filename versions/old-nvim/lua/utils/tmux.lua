local M = {}

M.new_vertical = function()
  local buffer_directory = vim.fn.expand("%:p:h")
  local cmd = "tmux split-window -v -c " .. vim.fn.shellescape(buffer_directory)
  vim.fn.system(cmd)
end

M.new_horizontal = function()
  local buffer_directory = vim.fn.expand("%:p:h")
  local cmd = "tmux split-window -h -c " .. vim.fn.shellescape(buffer_directory)
  vim.fn.system(cmd)
end

return M
