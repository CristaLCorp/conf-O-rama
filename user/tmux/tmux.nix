{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.tmux
  ];
  
  home.file."./config/tmux.tmux.conf".source = "./user/tmux/tmux.conf";

  programs.tmux = {
    #prefix = "C-a";
    enable = true;
  };
}

