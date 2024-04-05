{ config, pkgs, ... }:

{
  programs.tmux = {

    prefix = "C-a";
    enable = true;
  };
}
