{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.neovim
  ];
  
  # home.file.".config/nvim/".source = ./vim;
  #home.file.".config/nvim/init.lua".source = ./vim/init.lua;
}


