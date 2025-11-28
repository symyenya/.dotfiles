{ config, pkgs, lib, ...}:

let 
    fromGitHub = ref: repo: pkgs.vimUtils.buildVimPlugin {
        pname = "${lib.strings.sanitizeDerivationName repo}";
        version = ref;
        src = builtins.fetchGit {
            url = "https://github.com/${repo}.git";
            ref = ref;
        };
    };
in
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
            (fromGitHub "HEAD" "elihunter173/dirbuf.nvim")
        ]
    };
}