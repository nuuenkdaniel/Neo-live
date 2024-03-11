local function attach_action() 
  -- send data to server
  print("attached to buf")
end

local function line_changed_action()
  print("line changed")
end

vim.api.nvim_buf_attach(0, true, {
  on_lines = line_changed_action(),
})
