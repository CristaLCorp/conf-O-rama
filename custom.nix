{ inputs, config, pkgs, ... }:

{ 
  # Custom package list
  environment.systemPackages = with pkgs; [
				#pavucontrol
				#xfce.xfce4-pulseaudio-plugin
				git
				vlc
				qbittorrent
				gzip
				rustup
				docker
				ripgrep
				gcc
				cmake
				steam
				kitty
    			neovim
                xclip
                lua-language-server
        		unzip
        		onedrivegui
        		nodejs
        		ffmpeg
        		gimp
        		inkscape
        		wireshark
        		godot_4
				]; 

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];

#  services.onedrive.enable = true;
}
