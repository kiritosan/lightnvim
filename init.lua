require('willem.base')
require('willem.highlights')
require('willem.maps')
require('willem.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('willem.macos')
end
if is_win then
  require('willem.windows')
end
