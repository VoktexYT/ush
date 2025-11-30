{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    
    foot
    fuzzel
    
    waybar
  ];

  programs.fish = {
    enable = true;
  };
  
  programs.neovim = {
    enable = true;
  };

  programs.sway = {
    enable = true;
    config = {
      terminal = "foot";
      keybindings = {
        "Mod4+Return" = "exec foot";
        "Mod4+Shift+c" = "kill";
      };
    };
  };

  home.sessionVariables = {
  };
  
  home.stateVersion = "25.11";
}
