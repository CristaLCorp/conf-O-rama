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
                hostapd
                virtualbox
                genymotion
                qemu
				cmake
				steam
				kitty
    			neovim
                xclip
                lua-language-server
                imagemagick
        		unzip
                # onedrive
        		onedrivegui
                gparted
                reaper
        		nodejs
                brave
                burpsuite
        		ffmpeg
                wget
        		gimp
        		inkscape
        		wireshark
        		godot_4
                libinput
				]; 

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];

#  services.onedrive.enable = true;
}
