{ config, pkgs, ... }:
{
  programs.neovim = {
    
    defaultEditor = true;
    enable = true;

    extraConfig = ''
      set number relativenumber
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    '';

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      nvim-treesitter.withAllGrammars
      plenary-nvim
      gruvbox-material
      mini-nvim
      mason-nvim
    ];
  };
}

