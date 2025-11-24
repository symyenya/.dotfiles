{config, pkgs, ...}:

{

    services.dunst = {
        enable = true;
        settings = {
            global = {
                width = "(200,300)";
                height = "(0,150)";
                offset = "(30,50)";
                origin = "top-right";
                transparency = 10;
                frame_color = "#eceff1";
                font = "Droid Sans 9";
                background = "#00000846";
                foreground = "#FECDEF";
                timeout = 10;

            };
        };
    };

}