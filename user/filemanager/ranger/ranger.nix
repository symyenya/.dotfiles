{config, pkgs, ...}:
{
        programs.ranger = {
                enable = true;
                settings = {
                        show_hidden = true;
                        line_numbers = "relative";
                };
                plugins = [
                        {
                                name = "ranger-fzf-filter";   
                                src = builtins.fetchGit {
                                        url = "https://github.com/MuXiu1997/ranger-fzf-filter.git";
                                        rev = "bf16de2e4ace415b685ff7c58306d0c5146f9f43";
                                };
                        }
                ];
                mappings = {
                        f = "console fzf_filter%space";
                };
                extraPackages = [
                        pkgs.file
                        pkgs.fzf
                ];
        };
}
