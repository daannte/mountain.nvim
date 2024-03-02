local util = require("mountain.util")
local colours = require("mountain.colours")
local highlights = require("mountain.highlights")

local M = {}

M.config = {
	--- The theme comes in 1 style right now.
	--- Default: fuji
	style = "fuji",
	--- If the background should be transparent.
	transparent = false,
	--- Whether italics should be used for keywords and more.
	italics = false,
	--- Disable italic fonts for comments.
	disable_italic_comments = false,
	--- By default, the colour of the sign column background is the same as the as normal text
	--- background, but you can use a grey background by setting this to `"grey"`.
	sign_column_background = "none",
	--- The contrast of line numbers, indent lines, etc. Options are `"high"` or
	--- `"low"` (default).
	ui_contrast = "low",
	--- Dim inactive windows.
	dim_inactive = false,
	--- style for floating windows. Options are `"bright"` or `"dim"`
	--- Default: bright
	float_style = "bright",
	--- You can override specific highlights to use other groups or a hex colour.
	--- This function will be called with the highlights and colour palette tables.
	--- @param highlight_groups Highlights
	--- @param palette Palette
	on_highlights = function(highlight_groups, palette) end,
	--- You can override colours in the palette to use different hex colours.
	--- This function will be called once the base and background colours have
	--- been mixed on the palette.
	--- @param palette Palette
	colours_override = function(palette) end,
}

M.setup = function(opts)
	M.config = vim.tbl_extend("force", M.config, opts or {})
end

M.load = function()
	local palette = colours.generate_palette(M.config, vim.o.background)
	local generated_syntax = highlights.generate_syntax(palette, M.config)

	util.load(generated_syntax)
end

M.colorscheme = M.load

return M
