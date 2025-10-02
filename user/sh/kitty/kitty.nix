{config, pkgs, ...}:

{

    programs.kitty = {
        enable = true;
        settings = {
            background_opacity = 0.7;
            foreground = "#c0caf5";
            background = "#000008";
            cursor                = "#c0caf5";
            selection_background  = "#ffead3";
            color0                = "#17384c";
            color8                = "#424b52";
            color1                = "#d05023";
            color9                = "#d38677";
            color2                = "#ffcc66"; #[shell gedoens]
            color10               = "#618c98";
            color3                = "#fba02f";
            color11               = "#fdd29e";
            color4                = "#ffead3"; # Folder ls etc.
            color12               = "#ff6699";
            color5                = "#ff6699";
            color13               = "#bbe3ee";
            color6                = "#99ffdd";
            color14               = "#86abb3";
            color7                = "#deb88d";
            color15               = "#fee3cd";
            selection_foreground = "#08131a";
        };
    };

}
