local M = {}

local wk = require("which-key")
M.map_key = function(keyMap, mode, prefix)
  local opts = {
    mode = mode, -- NORMAL mode
    prefix = prefix,
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
  }

  wk.register(keyMap, opts)
end

--- Insert one or more values into a list like table and maintain
--that you do not insert non-unique values (THIS MODIFIES `lst`)
---@param lst any[]|nil The list like table that you want to insert into
---@param vals any|any[] Either a list like table of values to be inserted or a single value to be inserted
---@return any[] # The modified list like table
function M.list_insert_unique(lst, vals)
  if not lst then
    lst = {}
  end
  assert(vim.tbl_islist(lst), "Provided table is not a list like table")
  if not vim.tbl_islist(vals) then
    vals = { vals }
  end
  local added = {}
  vim.tbl_map(function(v)
    added[v] = true
  end, lst)
  for _, val in ipairs(vals) do
    if not added[val] then
      table.insert(lst, val)
      added[val] = true
    end
  end
  return lst
end

M.buff_current_dir = function()
  return vim.fn.expand("%:p:h")
end

M.is_directory = function(path)
  local file = io.open(path)
  if file then
    file:close()
    return true
  else
    return false
  end
end

return M
