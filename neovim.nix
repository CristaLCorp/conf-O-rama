{ config, pkgs, lib, ... }:
{
  programs.neovim = 
  let
  	toLua = str: "lua << EOF\n${str}\nEOF\n";
	toLuaFile = file: "lua << EOF\n$builtins.readFile file}\nEOF\n";
  in
  {
  enable = true;

  extraLuaConfig = ''
  	${builtins.readFile ./neovim/lua/options.lua}
  '';

  plugins = with pkgs.vimPlugins; [
  {
  	plugin = comment-nvim;
	config = toLua "require(\"Comment\").setup()";
  }
  {
  	plugin = onedarkpro-nvim;
	config = "colorscheme onedark_dark";
  }
 # {
 # 	plugin = nvim-lspconfig;
#	config = toLuaFile ./neovim/lua/plugin/lsp.lua;
#  }
  ];
};

}

