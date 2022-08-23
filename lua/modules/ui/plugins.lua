local ui = {}
local conf = require("modules.ui.config")

ui["kyazdani42/nvim-web-devicons"] = { opt = false }
ui["shaunsingh/nord.nvim"] = { opt = false, config = conf.nord }
ui["rcarriga/nvim-notify"] = {
	opt = false,
	config = conf.notify,
}
ui["hoob3rt/lualine.nvim"] = {
	opt = true,
	after = { "nvim-navic" },
	config = conf.lualine,
}
ui["SmiteshP/nvim-navic"] = {
	opt = true,
	after = "nvim-lspconfig",
	config = conf.nvim_navic,
}
ui["kyazdani42/nvim-tree.lua"] = {
	opt = true,
	cmd = { "NvimTreeToggle" },
	config = conf.nvim_tree,
}
ui["lewis6991/gitsigns.nvim"] = {
	opt = true,
	event = { "BufReadPost", "BufNewFile" },
	config = conf.gitsigns,
	requires = { "nvim-lua/plenary.nvim", opt = true },
}
ui["akinsho/bufferline.nvim"] = {
	opt = true,
	tag = "*",
	event = "BufReadPost",
	config = conf.nvim_bufferline,
}
ui["dstein64/nvim-scrollview"] = {
	opt = true,
	event = { "BufReadPost" },
	config = conf.scrollview,
}

return ui
