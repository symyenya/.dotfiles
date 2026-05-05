{ ... }:
{
    wayland.windowManager.mango = {
        enable = true;
        settings = {
            bind = [
                "SUPER,r,reload_config"
                "SUPER,q,killclient"
                "Alt,d,spawn,wofi --show drun"
                "Alt,Return,spawn,kitty"
                "ALT,R,setkeymode,resize"  # Enter resize mode
                "SUPER,f,togglefullscreen"  
                "SUPER,1,view,1"
                "SUPER,2,view,2"
                "SUPER,3,view,3"
                "SUPER,4,view,4"
                "SUPER,5,view,5"
                "SUPER,6,view,6"
                "SUPER,7,view,7"
                "SUPER,8,view,8"
                "SUPER,9,view,9"
                "SUPER,j,focusstack,next"
                "SUPER,k,focusstack,prev"
            ];
            tagrule = [
                "id:1,layout_name:tile"
                "id:2,layout_name:tile"
                "id:3,layout_name:tile"
                "id:4,layout_name:tile"
                "id:5,layout_name:tile"
                "id:6,layout_name:tile"
                "id:7,layout_name:tile"
                "id:8,layout_name:tile"
                "id:9,layout_name:tile"
            ];
            animations=0;
            gappih=0;
            gappiv=0;
            gappoh=0;
            gappov=0;
            borderpx=1;
            no_border_when_single=1;
            focuscolor="0xE46C87FF";
            new_is_master=0;
            enable_hotarea=0;
            warpcursor=1;
            sloppyfocus=1;
            axis_bind_apply_timeout=100;
            drag_tile_to_tile=1;
            enable_floating_snap=0;
            snap_distance=30;
            cursor_theme = "catppuccin-mocha-red-cursors";
            monitorrule="name:^DP-1$,width:3440,height:1440,refresh:175,x:0,y:0";
        };
        autostart_sh = ''
            bash $HOME/.dotfiles/user/wm/hypr/extras/start.sh
        '';
    };
}
