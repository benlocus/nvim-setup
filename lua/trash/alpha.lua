local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                        .^!777777~      ]],
  [[                 .^!77~^:......~Y~      ]],
  [[              :!?7^..           .5!     ]],
  [[           :7?!:.                .P^    ]], 
  [[         ~J!.                     :G    ]],
  [[       ^Y!.                        J?   ]], 
  [[      ?Y.                          .G.  ]], 
  [[     JJ                             ?Y  ]], 
  [[    ?Y                              JG  ]], 
  [[   .G.                              Y!  ]], 
  [[   J?                              .G   ]], 
  [[   G^                            ::.P^  ]], 
  [[   G:                            ^^ ^P  ]], 
  [[   P^                                ?J ]], 
  [[   Y!                                :G ]],
  [[   !Y  ..                          .. P^]], 
  [[   .G. .^                        .7J: P~]], 
  [[    Y7                        .~?J~  ?Y ]], 
  [[    .G.                   .^!??~.  ^Y7  ]], 
  [[     ?J              .:^!7?!:.  :!?!.   ]], 
  [[      P~       .^!777?7~:.  .^7?!.      ]], 
  [[      .P~ .^~!7?!:...  .:~77!^.         ]], 
  [[        ?JJ!^::..:^~!777~.              ]], 
  [[         .~77777!~^:.                   ]], 
}

dashboard.section.buttons.val = {
	dashboard.button(
		"f",
		"  Find file",
		"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>"
	),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "“Make it work, make it right, make it fast.” – Kent Beck"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
