{ inputs, config, pkgs, ... }:

{ 
#  programs.hyprland = {
#    enable = true;
#    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
#  };
  environment.systemPackages = [ 
  				pkgs.neovim
				pkgs.vimPlugins.nvchad
				pkgs.zsh
				pkgs.pavucontrol
				pkgs.xfce.xfce4-pulseaudio-plugin
				pkgs.git
				pkgs.vlc
				pkgs.python3
				pkgs.python311Packages.pip
				pkgs.python311Packages.jupyterlab
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
