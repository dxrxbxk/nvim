
-- N V I M  L S P -------------------------------------------------------------

return {

	{ -- lspconfig
		'https://github.com/neovim/nvim-lspconfig',

		dependencies = {
			-- lsp-smag [IMPORTANT]
			'https://github.com/weilbith/nvim-lsp-smag'
		}, ------------------------------------------------------------------------

		config = function()

			-- lspconfig
			local lspconfig = require('lspconfig')

			-- get default capabilities
			local capabilities = vim.lsp.protocol.make_client_capabilities()

			-- Add additional capabilities supported by nvim-cmp
			--local capabilities = require('cmp_nvim_lsp').default_capabilities()

			capabilities.offsetEncoding = 'utf-8'

			-- flags for all language servers
			local lsp_flags = {
				-- refresh rate (milliseconds)
				debounce_text_changes = 200,
			}


			-- on_attach function for all language servers
			local on_attach = function(client, bufnr)
				client.server_capabilities.semanticTokensProvider = nil
			end


			-- setup clangd language server
			lspconfig.clangd.setup {

				on_attach    = on_attach,
				flags        = lsp_flags,
				capabilities = capabilities,
				filetypes    = {"cpp", "hpp", "c", "h"},
				cmd          = {
					'clangd',
					'--background-index',
					'--clang-tidy',
					'--header-insertion-decorators',
					'--header-insertion=iwyu',
					'--completion-style=detailed',
					'--function-arg-placeholders',
					'--fallback-style=llvm',
				},
				root_dir = lspconfig.util.root_pattern('compile_commands.json', '.git'),

				init_options = {
					usePlaceholders = true,
					completeUnimported = true,
					clangdFileStatus = true,
				},
			}



			-- setup typescript language server
			lspconfig.tsserver.setup {
				on_attach     = on_attach,
				capabilities = capabilities,
				flags        = lsp_flags,
				filetypes    = { "typescript", "typescriptreact", "typescript.tsx" },
			}

			vim.diagnostic.config({
				underline = false,
				virtual_text = false,
				float = {
					border = 'rounded',
				},
				update_in_insert = false,
				signs = true,
				severity_sort = false,
			})

			-- You will likely want to reduce updatetime which affects CursorHold
			-- note: this setting is global and should be set only once
			vim.o.updatetime = 25
			vim.cmd [[autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]]


		end
	}, ------------------------------------------------------------------------

}
