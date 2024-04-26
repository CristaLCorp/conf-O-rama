{ config, pkgs, lib, ... }:

{
  imports = [
    #./vim/vim.nix
    #./neovim.nix
    #./neovim_man.nix
    ./user/terminal.nix
    ./user/tmux/tmux.nix
  ];

  home.username = "cristal";
  home.homeDirectory = "/home/cristal";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];

  home.file = {
  };

  home.sessionVariables = {
     EDITOR = "nvim";
     BROWSER = "firefox";
     TERMINAL = "kitty";
     SHELL = "zsh";
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
