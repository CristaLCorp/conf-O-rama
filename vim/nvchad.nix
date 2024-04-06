{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.neovim
  ];
  
  #home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
  home.file.".config/nvim/init.lua".source = ./init.lua;


}


