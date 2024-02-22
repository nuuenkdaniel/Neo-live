local connect = require("neo-live.connect")
local host = require("neo-live.host")

local M = {}

M.connect = connect.connect
M.host = host.host

return M
