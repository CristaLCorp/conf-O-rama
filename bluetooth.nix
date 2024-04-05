{ inputs, config, pkgs, ... }:

{ 
  # bluetooth config
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
}
