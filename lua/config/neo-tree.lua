vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

import("neo-tree", function(neoTree)
	neoTree.setup({
		close_if_last_window = true,
		hide_root_node = true,
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		window = {
			width = 30,
			mappings = {
				["l"] = "open",
				["o"] = "open",
			},
		},
		filesystem = {
			filtered_items = {
				visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
				hide_dotfiles = false,
				hide_gitignored = true,
				never_show = {
					".git",
					".DS_Store",
				},
			},
			follow_current_file = true,
			use_libuv_file_watcher = true,
		},
		source_selector = {
			winbar = true,
		},
	})
end)
