{ inputs, config, pkgs, ... }:

{ 
  # Custom package list
  environment.systemPackages = [
				#pkgs.pavucontrol
				#pkgs.xfce.xfce4-pulseaudio-plugin
				pkgs.git
				pkgs.vlc
				pkgs.qbittorrent
				pkgs.gzip
				pkgs.rustup
				pkgs.docker
				pkgs.ripgrep
				pkgs.gcc
				pkgs.cmake
				pkgs.steam
				pkgs.kitty
        pkgs.unzip
        pkgs.onedrivegui
        pkgs.nodejs
				]; 

  #programs.zsh.enable = true;
  #users.defaultUserShell = pkgs.zsh;

  services.onedrive.enable = true;
}
