local completion = {}
local conf = require("modules.completion.config")

completion["neovim/nvim-lspconfig"] = {
	opt = true,
	event = "BufReadPre",
	config = conf.nvim_lsp,
}
completion["williamboman/mason.nvim"] = {
	requires = {
		{
			"williamboman/mason-lspconfig.nvim",
		},
		{ "WhoIsSethDaniel/mason-tool-installer.nvim", config = conf.mason_install },
	},
}
completion["glepnir/lspsaga.nvim"] = {
	opt = true,
	after = "nvim-lspconfig",
	requires = { { "antoinemadec/FixCursorHold.nvim", opt = true } },
	config = conf.lspsaga,
}
completion["ray-x/lsp_signature.nvim"] = { opt = true, after = "nvim-lspconfig" }
completion["hrsh7th/nvim-cmp"] = {
	config = conf.cmp,
	event = "InsertEnter",
	requires = {
		{ "lukas-reineke/cmp-under-comparator" },
		{ "hrsh7th/cmp-nvim-lsp", after="nvim-cmp" },
		{ "andersevenrud/cmp-tmux", after="cmp-nvim-lsp" },
		{ "hrsh7th/cmp-path", after="cmp-tmux" },
		{ "f3fora/cmp-spell", after = "cmp-path" },
		{ "hrsh7th/cmp-buffer", after = "cmp-spell" },
		{ "kdheepak/cmp-latex-symbols", after = "cmp-buffer" },
		{
			"tzachar/cmp-tabnine",
			run = "./install.sh",
			after = "cmp-latex-symbols",
			config = conf.tabnine,
		},
	},
}
completion["windwp/nvim-autopairs"] = {
	after = "nvim-cmp",
	config = conf.autopairs,
}
-- completion["github/copilot.vim"] = { opt = true, cmd = "Copilot" }

return completion
