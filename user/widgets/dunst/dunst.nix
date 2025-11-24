{config, pkgs, ...}:

{

    services.dunst = {
        enable = true;
        settings = {
            global = {
                width =  "(200,300)";
                height = "(0,150)";
                offset = "(250,0)";
                origin = "top-right";
                transparency = 10;
                frame_color = "#FECDEF";
                font = "Droid Sans 9";
            };
            urgency_normal = {
                background = "#00000848";
                foreground = "#FECDEF";
                timeout = 10;
            };
        };
    };

}