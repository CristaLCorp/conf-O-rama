#!/usr/bin/env sh

nix-store --gc
sudo nix-collect-garbage --delete-older-than 5d
