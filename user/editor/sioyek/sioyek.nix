{config, pkgs, ...}:
{
        programs.sioyek = {
                enable = true;
                config = {
                        "background_color" = "0.0 0.0 0.0";
                        "text_highlight_color" = "1.0 0.0 0.0";
                };
                bindings = {
                        "move_up" = "k";
                        "move_down" = "j";
                        "move_left" = "h";
                        "move_right" = "l";
                        "screen_down" = [ "d" "<C-d>" ];
                        "screen_up" = [ "u" "<C-u>" ];                
                };
        };        
}
