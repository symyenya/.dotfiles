{config, pkgs, ...}:

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
    background: transparent;
    color: #c0caf5;
    font-family: 
        SpaceMono Nerd Font,
        feather;
    transition: background-color .5s;
}

.modules-left,
.modules-center,
.modules-right
{
    background: rgba(0, 0, 8, .8);
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
#mpd {
    padding: 0 10px;
    border-radius: 15px;
}

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
#mpd:hover {
    background: rgba(26, 27, 38, 0.9);
}


#workspaces button {
  background: transparent;
  font-family:
    SpaceMono Nerd Font,
    feather;
  font-weight: 900;
  font-size: 13pt;
  color: #c0caf5;
  border:none;
  border-radius: 15px;
}

#workspaces button.active {
    background: #13131d; 
}

#workspaces button:hover {
  background: #11111b;
  color: #cdd6f4;
  box-shadow: none;
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
    background-color: #cdd6f4;
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
            ];
            modules-center= [
	            "image"
                "mpris"
            ];
            modules-right = [
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
                exec="/home/nya/.dotfiles/user/sh/album_art.sh";
                size= 36;
                interval= 30;
            };

            "mpris"= {
                player= "spotify";
	            format= "{title} - {artist}";
	            format-paused= "{status_icon} - {title} - {artist}";
	            player-icons= {
		            default= "▶";
		            mpv= "🎵";
	            };
                interval= 2;
	            status-icons= {
		            "paused"= "⏸";
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
		        menu= "on-click";
		        menu-file= "/home/nya/.dotfiles/user/xml/power_menu.xml";
		        menu-actions= {
			        lock= "hyprlock";
			        shutdown= "shutdown";
			        reboot= "reboot";
		        };
            };
        };
    };
};
}