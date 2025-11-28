{pkgs, ...}:
{
  programs.nvf = {
    enable = true;
    # your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings = {
	vim = {
                theme = {
                        enable = true;
                        name = "gruvbox";
                        style = "dark";
                };
        	viAlias = true; 
        	vimAlias = true;
        	lsp = {
          		enable = true;
      		};
          	filetree.nvimTree.setupOpts.view = {
      			number = true;
			relativenumber = true;
		};
		languages = {
			enableTreesitter = true;
			nix.enable = true;
			zig.enable = true;
		};
		statusline.lualine.enable = true;
		telescope.enable = true;
		autocomplete.nvim-cmp.enable = true;
                startPlugins = [pkgs.vimPlugins.dirbuf-nvim];
      	};
    };
  };
}
