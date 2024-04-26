{ config, pkgs, lib, ... }:

{
  imports = [
    #./vim/vim.nix
    #./nvchad.nix
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

  programs.neovim = 
  let
  	toLua = str: "lua << EOF\n${str}\nEOF\n";
	toLuaFile = file: "lua << EOF\n$builtins.readFile file}\nEOF\n";
  in
  {
  enable = true;

  extraLuaConfig = ''
  ${builtins.readFile ./neovim/lua/options.lua}
  '';

  plugins = with pkgs.vimPlugins; [
  #{
 # 	plugin = comment-nvim;
#	config = toLua "require(\"Comment\").setupd()";
#  }
  {
  	plugin = gruvbox-nvim;
	config = "colorscheme gruvbox";
  }
  ];
};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
