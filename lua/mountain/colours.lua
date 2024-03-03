local M = {}

local fuji = {
	bg_dim = "#191919",
	bg = "#0F0F0F",
	bg1 = "#262626",
	bg2 = "#393939",
	bg3 = "#4C4C4C",
	bg_visual = "#393939",
}

local base_palette = {
	dark = {
		fg = "#F0F0F0",
		red = "#AC8A8C",
		orange = "#C6A679",
		-- yellow = "#ACA98A",
		yellow = "#DBBC7F",
		green = "#8AAC8B",
		aqua = "#8AACAB",
		blue = "#8A98AC",
		purple = "#AC8AAC",
		grey0 = "#767676",
		grey1 = "#A0A0A0",
		grey2 = "#BFBFBF",
		none = "NONE",
	},
}

M.generate_palette = function(opts, theme)
	local base = base_palette[theme]

	local combined_palette = vim.tbl_extend("force", base, fuji)
	opts.colours_override(combined_palette)

	return combined_palette
end

return M
