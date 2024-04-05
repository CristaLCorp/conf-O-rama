{ config, pkgs, ... }:

{
  imports = [
    ./vim/vim.nix
    ./user/terminal.nix
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
  };

#  programs.zsh = {
#    
#    enable = true;
#    enableCompletion = true;
#    enableAutosuggestions = true;
#    syntaxHighlighting.enable = true;
#    history.size = 10000;
#
#    shellAliases = {
#      #vim = "nvim";
#    };
#
#    oh-my-zsh = {
#      enable = true;
#      plugins = [ "git" "encode64" "catimg" ];
#      theme = "wedisagree";
#    };
#
#    #zplug = {
#    #enable = true;
#    #plugins = [
#    #  { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
#    #  { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; } # Installations with additional options. For the list of options, please refer to Zplug README.
#    #  ];
#    #  };
#
#  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
