{ config, pkgs, ... }:

let
  nvimConfig = import ./neovim.nix;
in
  {
    programs.home-manager.enable = true;
    home.username = "mb";
    home.homeDirectory = "/home/mb";
  
  
    # Don't change, see release notes for state version changes in each release
    home.stateVersion = "23.05";
  
    home.packages = with pkgs; [
      neofetch
      starship
      gh
      firefox
      thunderbird
      freetube
      signal-desktop

      # LSP
	  rnix-lsp nixfmt #nix
	  luajitPackages.lua-lsp stylua #lua
	  rust-analyzer #rust
	  rustfmt
	  ccls
	  nodePackages.pyright
    ];
  
    programs.zsh = {
      enable = true;
      shellAliases = {
        ls = "exa";
        ll = "exa -l";
		sudo = "sudo -E";
        update = "sudo nixos-rebuild switch";
      };
      #histSize = 10000;
      #histFile = "${config.xdg.dataHome}/zsh/history";
    };
  
    programs.starship = {
      enable = true;
      settings = {};
    };
	programs.git = {
      enable = true;
      userName  = "Marco Bazzani";
      userEmail = "mbazzani@ucsd.edu";
    };
  
    programs.neovim = nvimConfig pkgs;
  }
