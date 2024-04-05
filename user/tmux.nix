{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.tmux
  ];

  programs.tmux = {
    prefix = "C-a";
    enable = true;
  };
}
