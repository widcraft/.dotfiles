return {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			workspace = { library = { [vim.fn.expand("$VIMRUNTIME/lua")] = true } },
			telemetry = { enable = false },
			hint = {
				enable = true,
			},
		},
	},
}
