{ inputs, config, pkgs, ... }:

{ 
  # Custom package list
  programs = {
    neovim = {
      plugins = [
        ## Treesitter
        pkgs.vimPlugins.nvim-treesitter
        pkgs.vimPlugins.nvim-treesitter.withAllGrammars
        pkgs.vimPlugins.nvim-treesitter-textobjects
        pkgs.vimPlugins.nvim-lspconfig
      ];	
    };
  };
};
