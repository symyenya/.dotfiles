{homePath, ...} :{config, pkgs, ...}:

{
    programs.waybar = {
        enable = true;
        style = '' 
                * {
    font-family: "Fira Sans Semibold", FontAwesome, Roboto, Helvetica, Arial, sans-serif;
    font-size: 15px;
    transition: background-color .3s ease-out;
}
window#waybar {
    background: #fa5568;
    background: linear-gradient(90deg,rgba(11, 24, 17, .8) 0%, rgba(9, 20, 14, .8) 20%, rgba(20, 26, 22, .8) 40%, rgba(167, 63, 70, .8) 45%, rgba(169, 50, 56, .8) 50%, rgba(144, 41, 46, .8) 55%, rgba(230, 62, 65, .8) 60%, rgba(240, 97, 92, .8) 65%, rgba(92, 48, 54, .8) 70%, rgba(9, 22, 15, .8) 100%);
    color: #FECDEF;
    font-family: 
        SpaceMono Nerd Font,
        feather;
    transition: background-color .5s;
}

.modules-left,
.modules-center,
.modules-right
{
    background: transparent;
    margin: 5px 10px;
    padding: 0 5px;
    border-radius: 15px;
}
.modules-left {
    padding: 0;
}
.modules-center {
    padding: 0 10px;
}

#clock,
#battery,
#cpu,
#memory,
#disk,
#temperature,
#backlight,
#network,
#pulseaudio,
#wireplumber,
#custom-media,
#tray,
#mode,
#idle_inhibitor,
#scratchpad,
#power-profiles-daemon,
#language,
#mpris {
    padding: 0px 10px 0px 10px;
    border-radius: 15px;
}

#workspaces button:hover,
#clock:hover,
#battery:hover,
#cpu:hover,
#memory:hover,
#disk:hover,
#temperature:hover,
#backlight:hover,
#network:hover,
#pulseaudio:hover,
#wireplumber:hover,
#custom-media:hover,
#tray:hover,
#mode:hover,
#idle_inhibitor:hover,
#scratchpad:hover,
#power-profiles-daemon:hover,
#language:hover,
#pulseaudio-slider:hover,
#mpris:hover {
    background: rgba(194, 46, 52, .7);
}


#workspaces button {
  background: transparent;
  font-family:
    SpaceMono Nerd Font,
    feather;
  font-weight: 900;
  font-size: 13pt;
  color: #FECDEF;
  border:none;
  border-radius: 15px;
}

#workspaces button.active {
    background: #E46C87; 
}

#pulseaudio-slider {
    padding: 0;
    margin: 0;
}
#pulseaudio-slider slider {
    min-height: 0px;
    min-width: 0px;
    opacity: 0;
    background-image: none;
    border: none;
    box-shadow: none;
}
#pulseaudio-slider trough {
    min-height: 10px;
    min-width: 80px;
    border-radius: 5px;
    background-color: black;
}
#pulseaudio-slider highlight {
    min-width: 10px;
    border-radius: 5px;
    background-color: #FECDEF;
}
                '';
    settings = {
        mainBar = {
            layer= "top";
            position= "top";
            height= 50;
            spacing= 4;
            modules-left= [
                "hyprland/workspaces"
                "mpris"
            ];
            modules-center= [
	            
            ];
            modules-right = [
                "custom/notifications"
	            "pulseaudio"
                "pulseaudio/slider"
                "hyprland/language"
                "clock"
	            "custom/power"
            ];

            "hyprland/workspaces"= {
                disable-scroll= true;
                all-outputs= true;
                warp-on-scroll= false;
                format="{name}";
                format-icons= {
                    urgent= "";
                    active= "";
                    default= "";
                };
            };

            pulseaudio= {
                format= "{volume}% {icon}";
                format-bluetooth= "{volume}% {icon}";
                format-muted= "";
                format-icons= {
                    "alsa_output.pci-0000_00_1f.3.analog-stereo"= "";
                    "alsa_output.pci-0000_00_1f.3.analog-stereo-muted"= "";
                    headphone= "";
                    hands-free= "";
                    headset= "";
                    phone= "";
                    phone-muted= "";
                    portable= "";
                    car= "";
                    default= ["" ""];
                };
                scroll-step= 1;
                on-click= "pavucontrol";
                ignored-sinks= ["Easy Effects Sink"];
            };

            "pulseaudio/slider"= {
	            format="{}";
                min= 0;
    	        max= 100;
    	        orientation="horizontal";
            };

            "image"= {
                exec=homePath+"/.dotfiles/user/wm/hypr/waybar/custom/album_art.sh";
                size= 36;
                interval= 30;
            };

            "mpris"= {
                player= "spotify";
	            format= " {title} - {artist}";
	            format-paused= " {title} - {artist} {status_icon}";
	            player-icons= {
		            default= "▶";
		            mpv= "🎵";
	            };
                interval= 2;
	            status-icons= {
		            "paused"= "⏸";
                    "playing" = "▶";
	            };
            };

            "hyprland/language"= {
                format= "  {}";
                format-en= "EN";
                format-ru= "RU";
            };

            "clock"= {
                format= "{:%H:%M | %e %B}";
                tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
                format-alt= "{:%Y-%m-%d}";
                calendar= {
                    mode          = "year";
                    mode-mon-col  = 3;
                    weeks-pos    = "right";
                    on-scroll     = 1;
                    format= {
                              months=     "<span color='#ffead3'><b>{}</b></span>";
                              days=       "<span color='#c0caf5'><b>{}</b></span>";
                              weeks=      "<span color='#99ffdd'><b>W{}</b></span>";
                              weekdays=   "<span color='#ffcc66'><b>{}</b></span>";
                              today=      "<span color='#ff6699'><b><u>{}</u></b></span>";
                              };
                    };
                actions=  {
                    on-scroll-up= "shift_up";
                    on-scroll-down= "shift_down";
                    };
            };

            "custom/power"= {
                format = "⏻ ";
		        tooltip= false;
		        on-click = "bash $HOME/.dotfiles/user/wm/hypr/waybar/custom/power_menu.sh";
            };
            "custom/notifications"= {
		        tooltip= false;
		        on-click = "bash $HOME/.dotfiles/user/wm/hypr/waybar/custom/dunst_show_all.sh";
                format= "{icon} {text}";
                exec = "bash $HOME/.dotfiles/user/wm/hypr/waybar/custom/dunst_notify.sh";
                interval = 2;
                return-type= "json";
                on-click-right = "dunstctl set-paused toggle";
                on-click-middle = "dunstctl history-clear";
                format-icons= {
                    "paused"= "";
                    "unpaused"= "";
                    };
            };
            tray = {
                icon-size= 21;
                spacing= 10;
            };
        };
    };
};
}