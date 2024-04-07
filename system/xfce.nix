{ inputs, config, pkgs, ... }:

{
# Custom package list
environment.systemPackages = [
				pkgs.pavucontrol
				pkgs.xfce.xfce4-pulseaudio-plugin
				]; 

}
