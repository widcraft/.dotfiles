return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "off",
					},
				},
			},
		},
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"mfussenegger/nvim-dap-python",
			keys = {
				{
					"<leader>dPt",
					function() require("dap-python").test_method() end,
					desc = "Debug Method",
					ft = "python",
				},
				{
					"<leader>dPc",
					function() require("dap-python").test_class() end,
					desc = "Debug Class",
					ft = "python",
				},
			},
			config = function()
				local path = require("mason-registry").get_package("debugpy"):get_install_path()
				require("dap-python").setup(path .. "/venv/bin/python")
			end,
		},
	},
}
