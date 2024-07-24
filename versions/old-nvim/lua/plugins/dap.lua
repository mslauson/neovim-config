local function setup_dap_ui_listeners(dap)
  dap.listeners.after.event_initialized["dap-ui-toggle"] = function()
    print("Debugger started!")
    require("dapui").open()
  end

  dap.listeners.after.event_terminated["dap-ui-toggle"] = function()
    print("Debugger terminated!")
    require("dapui").close()
  end

  dap.listeners.after.event_exited["dap-ui-toggle"] = function()
    print("Debugger exited!")
    require("dapui").close()
  end
end

return {
  "mfussenegger/nvim-dap",
  enabled = true,
  dependencies = {
    "rcarriga/nvim-dap-ui",
    opts = function(opts)
      local dap = require("dap")

      setup_dap_ui_listeners(dap)
      opts.layouts = {
        {
          elements = {
            -- Elements can be strings or table with id and size keys.
            { id = "scopes", size = 0.25 },
            "breakpoints",
            "stacks",
            "watches",
          },
          size = 40, -- 40 columns
          position = "right",
        },
        {
          elements = {
            "repl",
            "console",
          },
          size = 0.25, -- 25% of total lines
          position = "bottom",
        },
      }

      return opts
    end,
  },
}
