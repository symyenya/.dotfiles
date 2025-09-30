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
            ],
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
                    alsa_output.pci-0000_00_1f.3.analog-stereo= "";
                    alsa_output.pci-0000_00_1f.3.analog-stereo-muted= "";
                    headphone= "";
                    hands-free= "";
                    headset= "";
                    phone= "";
                    phone-muted= "";
                    portable= "";
                    car= "";
                    default= [""; ""];
                };
                scroll-step= 1;
                on-click= "pavucontrol";
                ignored-sinks= ["Easy Effects Sink"];
            };
    };
}