return {
	'mfussenegger/nvim-lint',
	config = function()
		require('lint').linters_by_ft = { --some of these need to be installed from package manager
		  lua = {'luacheck'},
		  python = {'ruff'},
		  sh = {'bash'},
		  c = {'clangtidy'},
		  rust = {'clippy'},
		  css = {'stylelint'},
		  -- html = {'biomejs'},
		}
	end,
}


