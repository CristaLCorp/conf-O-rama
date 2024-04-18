#!/usr/bin/env sh

echo """
********************
* Nix flake update *
********************
"""
nix flake update; 
echo """
************************
* nixos-rebuild switch *
************************
"""
sudo nixos-rebuild switch --flake .; 
echo """
***********************
* home-manager switch *
***********************
"""
home-manager switch --flake .
