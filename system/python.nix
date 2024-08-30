{ inputs, config, pkgs, ... }:

{ 
  # Custom package list
  environment.systemPackages = [
  				(pkgs.python311.withPackages (p: with p; [
				  regex
				  pip
				  pandas
				  jupyterlab
                  matplotlib
                  seaborn
				  ]))
				]; 
}
