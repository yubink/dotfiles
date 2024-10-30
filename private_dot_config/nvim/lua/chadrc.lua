-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.mason = {
  pkgs = {
    "lua-language-server", "stylua",
    "html-lsp", "css-lsp" , "prettier",
    "jedi-language-server", "typescript-language-server",
  }
}

M.base46 = {
	theme = "ayu_light",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
