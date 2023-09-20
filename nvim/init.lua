package.path = package.path .. ';' .. vim.fn.stdpath('config') .. '/lua/?.lua'

require('options')
require('keybinds')
