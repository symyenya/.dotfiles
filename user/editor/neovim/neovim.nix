{ config, pkgs, ...}:
{
    programs.neovim = {
        enable = true;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
        vimdiffAlias = true;
        plugins = with pkgs.vimPlugins; [
            nvim-lspconfig
            nvim-treesitter.withAllGrammars
            plenary-nvim
            gruvbox-material
            mini-nvim
            telescope-nvim
            telescope-fzf-native-nvim
            nvim-web-devicons
            dirbuf-nvim
        ];
	extraLuaConfig = ''
			 vim.wo.relativenumber = true

	     		local lspconfig = require("lspconfig")
			lspconfig.zls.setup {
				cmd = { "zls" },
  				filetypes = { "zig", "zir" },
  				root_dir = lspconfig.util.root_pattern("build.zig", ".git") or vim.loop.cwd,
  				single_file_support = true,
			}
			vim.api.nvim_create_autocmd("LspAttach", {
  				callback = function(args)
    				local opts = { buffer = args.buf }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
   	 			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)       -- Hover info
  				end,
			})
			 require("nvim-treesitter.configs").setup {
    			 	ensure_installed = { "zig" },
    			 	highlight = { enable = true },
			 }		
			 '';
    };
}
