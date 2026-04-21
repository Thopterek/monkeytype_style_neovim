return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			razor = {}, -- no formatter for razor, skip LSP format
		},
		format_on_save = function(bufnr)
			-- disable format on save for razor files entirely
			if vim.bo[bufnr].filetype == "razor" then
				return nil
			end
			return { timeout_ms = 500, lsp_format = "fallback" }
		end,
	},
}
