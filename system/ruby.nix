{ inputs, config, pkgs, ... }:

{ 
  # Custom package list
  environment.systemPackages = [
        pkgs.ruby
				]; 
}
