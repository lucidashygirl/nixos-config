{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    globals.mapleader = " ";
    globals.maplocalleader = " ";
    # Import all your configuration modules here
    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = "macchiato";
    };
    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers
      expandtab = true;
      tabstop = 2;
      shiftwidth = 2; # Tab width should be 2

    };
    #autoCmd = [ { event = [ "BufEnter" ]; command = "inoremap <C-m> <C-n>"; } ];
    plugins = {
      coq-nvim = {
        enable = true;
        installArtifacts = true;
      };
      nvim-autopairs.enable = true;
      cmp = {
        enable = true;
        #settings.completion.autocomplete = [ "TextChanged" ];
        autoEnableSources = true;
        settings.sources =
          [ { name = "nvim_lsp"; } { name = "path"; } { name = "buffer"; } ];
      };
      bufferline.enable = true;
      cmp-buffer.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-nvim-lsp-document-symbol.enable = true;
      cmp-nvim-lsp-signature-help.enable = true;
      cmp-clippy.enable = true;
      lsp-format.enable = true;
      godot.enable = true;
      bacon.enable = true;
      treesitter.enable = true;
      #rust-tools.enable = true;
      rustaceanvim.enable = true;
      neo-tree.enable = true;
      none-ls = {
        enable = true;
        enableLspFormat = true;
      };
      web-devicons.enable = true;
      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          typos_lsp.enable = true;
          ast_grep.enable = true;
        };
      };
      orgmode.enable = true;
    };

    keymaps = [
      {
        action = "<cmd>Neotree<CR>";
        key = "<Space>e";
      }
      {
        action = "<cmd>bd<CR>";
        key = "<Space>c";
      }
      {
        action = "<cmd>bn<CR>";
        key = "]b";
      }
      {
        action = "<cmd>bp<CR>";
        key = "[b";
      }
    ];
  };
}
