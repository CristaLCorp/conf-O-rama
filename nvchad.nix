{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.neovim
  ];
  
  home.file.".config/nvim/".source = ./vim;
}


