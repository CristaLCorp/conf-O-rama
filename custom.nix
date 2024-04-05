#{ inputs, config, pkgs, ... }:
{ pkgs, ... }:

{ 
  # Custom package list
  environment.systemPackages = [
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
				#pkgs.tmux
				]; 
}
