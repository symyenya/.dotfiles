{pkgs, ...}:
{

    wayland.windowManager.hyprland.enable = true;
    wayland.windowManager.hyprland.extraConfig = builtins.readFile ./extras/hyprland.conf;
    wayland.windowManager.hyprland = {
        #plugins = [pkgs.hyprlandPlugins.csgo-vulkan-fix];
        settings = {
        "exec-once" = "bash $HOME/.dotfiles/user/wm/hypr/extras/start.sh";
        #"plugins:csgo-vulkan-fix" = {
        #fix_mouse = true;
        #       "vkfix-app" = "cs2, 2560, 1440";
        #   };
        };
    };

}
