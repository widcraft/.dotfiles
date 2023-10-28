return {
	{
		"echasnovski/mini.surround",
		keys = function()
			local plugin = require("lazy.core.config").spec.plugins["mini.surround"]
			local opts = require("lazy.core.plugin").values(plugin, "opts", false)

			return {
				{ opts.mappings.add, mode = { "n", "v" } },
				{ opts.mappings.delete },
				{ opts.mappings.replace },
			}
		end,
		opts = {
			mappings = {
				add = "gza",
				delete = "gzd",
				replace = "gzr",
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		opts = {},
	},
}
