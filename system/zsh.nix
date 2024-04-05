{ inputs, config, pkgs, ... }:

{
# Make zsh the default shell
environment.shells = with pkgs; [ zsh ];
users.defaultUserShell = pkgs.zsh;
programs.zsh.enable = true;
# programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

# Custom package list
environment.systemPackages = [
				pkgs.zsh
				pkgs.zsh-powerlevel10k
				]; 

}
