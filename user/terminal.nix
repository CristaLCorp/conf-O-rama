{ config, pkgs, ... }:

{
  programs.zsh = {
    
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;

    shellAliases = {
      vim = "nvim";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "encode64" "catimg" ];
      theme = "wedisagree";
    };

    #zplug = {
    #enable = true;
    #plugins = [
    #  { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
    #  { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; } # Installations with additional options. For the list of options, please refer to Zplug README.
    #  ];
    #  };

  };
}
