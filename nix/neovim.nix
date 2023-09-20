{ config, pkgs, lib, ... }:

{
  enable = true;
  viAlias = true;
  vimAlias = true;
  defaultEditor = true;
  extraConfig = ''
    luafile /home/mb/conf/nvim/options.lua
    luafile /home/mb/conf/nvim/keybinds.lua
    '';
  plugins = with pkgs.vimPlugins; [
    # File tree
#	{
#  	  plugin = nvim-treesitter.withAllGrammars;
#  	  config = ''
#            lua << EOF
#            require('nvim-treesitter.configs').setup {
#              highlight = {
#                enable = true,
#                additional_vim_regex_highlighting = false,
#              },
#            }
#            EOF
#  	  '';
#        }
	{
	  plugin = onedarkpro-nvim;
	  config = "lua vim.cmd(\"colorscheme onedark\")";
	}
	{
      plugin = nvim-tree-lua;
	  config = "lua require('nvim-tree').setup()";
	}
	{
      plugin = nvim-web-devicons;
	  config = "lua require('nvim-web-devicons').setup()";
	}
    {
      plugin = leap-nvim;
      config = "lua require('leap').add_default_mappings()";
    }
	{
      plugin = lualine-nvim;
	  config = "lua require('lualine').setup()";
	}
    {
      plugin = nvim-lspconfig;
      config = ''
        lua << EOF
        require('lspconfig').rust_analyzer.setup{}
        require('lspconfig').lua_ls.setup{}
        require('lspconfig').rnix.setup{}
        require('lspconfig').ccls.setup{}
        require('lspconfig').pyright.setup{}
        EOF
      '';
     }
     nvim-compe
  ];
}
