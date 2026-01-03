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
                    name = "mellow";
                    #style = "mocha";
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
                    gleam.enable = true;
                    rust.enable = true;
                };
                statusline.lualine.enable = true;
                telescope.enable = true;
                autocomplete.nvim-cmp.enable = true;
                        # Extra Plugins to load from nixpkgs
                startPlugins = [pkgs.vimPlugins.dirbuf-nvim];
                # Settings
                options = {
                    tabstop = 4;
                    shiftwidth = 4;
                };
                # Keybinds 
                keymaps = [
                    {
                        key = "<leader>ff";
                        mode = "n";
                        silent = true;
                        action = ":Telescope find_files<CR>";
                    }
                    {
                        key = "<leader>st";
                        mode = "n";
                        silent = true;
                        action = ":split<CR><C-W>\j:term<CR>\i";
                    }
                    {
                        key = "<A-j>";
                        mode = "n";
                        action = "<C-w>\j";
                    }
                    {
                        key = "<A-h>";
                        mode = "n";
                        action = "<C-w>\h";
                    }
                    {
                        key = "<A-k>";
                        mode = "n";
                        action = "<C-w>\k";
                    }
                    {
                        key = "<A-l>";
                        mode = "n";
                        action = "<C-w>\l";
                    }
                    {
                        key = "<Esc>";
                        mode = "t";
                        action = "<C-\\><C-n>";
                    }
                ];
                globals = {
                    mapleader = ",";
                    maplocalleader = " ";
                };
                diagnostics = {
                    enable = true;
                    config = {
                        virtual_text = true;
                        signs = true;
                        underline = true;
                        update_in_insert = true;
                    };
                };
      	};
    };
  };
}
