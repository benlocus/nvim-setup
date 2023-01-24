import("catppuccin", function(catppuccin)
	catppuccin.setup({
		flavour = "macchiato", -- latte, frappe, macchiato, mocha
		term_colors = false,
		transparent_background = false,
		no_italic = false,
		no_bold = false,
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
		},
		color_overrides = {
			mocha = {
				base = "#000000",
			},
		},
		highlight_overrides = {
			mocha = function(C)
				return {
					TabLineSel = { bg = C.pink },
					NvimTreeNormal = { bg = C.none },
					CmpBorder = { fg = C.surface2 },
					Pmenu = { bg = C.none },
					NormalFloat = { bg = C.none },
					TelescopeBorder = { link = "FloatBorder" },
				}
			end,
		},
	})
	vim.cmd.colorscheme("catppuccin")
end)

import("kanagawa", function(kanagawa)
	kanagawa.setup({
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
		typeStyle = {},
		variablebuiltinStyle = { italic = true },
		specialReturn = true,
		specialException = true,
		transparent = false,
		dimInactive = false,
		globalStatus = false,
		terminalColors = true,
		colors = {},
		overrides = {},
		theme = "default",
	})

	vim.cmd.colorscheme("kanagawa")
end)
