{ inputs, config, pkgs, ... }:

{ 
  # Custom package list
  environment.systemPackages = [
  				(pkgs.ruby.withPackages (ps: with ps; [
				  jekyll
				  ]))
				]; 
}
