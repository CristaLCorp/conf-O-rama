{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.neovim
  ];
  
  #home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
  home.file.".config/nvim/init.lua".source = ./init.lua;
  home.file.".config/nvim/lua".source = ./lua;
  home.file.".config/nvim/lua/configs".source = ./lua/configs;
  home.file.".config/nvim/lua/plugins".source = ./lua/plugins;
  home.file.".config/nvim/lua/myshit.lua".source = ./lua/myshit.lua;


}


