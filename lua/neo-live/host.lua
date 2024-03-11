buffer = vim.api.nvim_buf_get_lines(0, 0, -1, false)
-- send buffer through connection

events = {}
vim.api.nvim_buf_attach(0, true, {
  on_lines = function(type, buf, changedtick, firstline, lastline, new_lastline, old_byte_size)
    changedtext = vim.api.nvim_buf_get_lines(buf, firstline, new_lastline, true)
    table.insert(events, {firstline, new_lastline, changedtext})
  end,
})
