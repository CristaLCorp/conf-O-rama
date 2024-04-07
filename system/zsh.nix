{ inputs, config, pkgs, ... }:

{
# Make zsh the default shell
programs.zsh.enable = true;
environment.shells = with pkgs; [ zsh ];
users.defaultUserShell = pkgs.zsh;
# programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

# Custom package list
environment.systemPackages = [
				pkgs.zsh
				pkgs.zsh-powerlevel10k
				]; 

}
