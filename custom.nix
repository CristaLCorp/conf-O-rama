{ inputs, config, pkgs, ... }:

{ 
#  programs.hyprland = {
#    enable = true;
#    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
#  };
  
  # Make zsh the default shell
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
  # programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

  # Custom package list
  environment.systemPackages = [
  				(pkgs.python311.withPackages (p: with p; [
				  regex
				  pip
				  pandas
				  jupyterlab
				  ]))
  				pkgs.neovim
				pkgs.vimPlugins.nvchad
				pkgs.zsh
				pkgs.zsh-powerlevel10k
				#pkgs.zsh-autosuggestions
				#pkgs.zsh-syntax-highlighting
				#pkgs.zsh-autocomplete
				pkgs.pavucontrol
				pkgs.xfce.xfce4-pulseaudio-plugin
				pkgs.git
				pkgs.vlc
				#pkgs.python3
				#pkgs.python311Packages.pip
				#pkgs.python311Packages.jupyterlab
				#pkgs.python311Packages.pandas
				pkgs.qbittorrent
				pkgs.gzip
				pkgs.rustup
				pkgs.docker
				pkgs.ripgrep
				pkgs.gcc
				pkgs.cmake
				pkgs.steam
				pkgs.tmux
				]; 
  # bluetooth config
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  # pulseaudio
  #hardware.pulseaudio.enable = pkgs.lib.mkForce true;
  #hardware.pulseaudio.support32Bit = true;

  #users.extraUsers.cristal.extraGroups = [ "audio" ];
  #nixpkgs.config.pulseaudio = true;
}
