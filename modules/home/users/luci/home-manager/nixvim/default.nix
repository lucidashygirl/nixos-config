{pkgs, ...}:
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
        settings = {
          sources =
            [ { name = "nvim_lsp"; } { name = "path"; } { name = "buffer"; } ];
          mapping = {
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-e>" = "cmp.mapping.close()";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          };
        };
      };
      bufferline.enable = true;
      cmp-buffer.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-nvim-lsp-document-symbol.enable = true;
      cmp-nvim-lsp-signature-help.enable = true;
      cmp-clippy.enable = true;
      cmp-latex-symbols.enable = true;
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
      orgmode = {
        enable = true;
        settings = { 
          org_agenda_files = "~/org/*";
          org_default_notes_file = "~/org/default_notes.org";
        };
      };
    };

    extraPlugins = [
      pkgs.vimPlugins."org-roam-nvim"
      pkgs.vimPlugins.ron-vim
    ];

    extraConfigLua = "
    require('org-roam').setup({
      directory = '~/org/roam/',
    })";

    keymaps = [
      {
        action = "<cmd>Neotree<CR>";
        key = "<leader>e";
      }
      {
        action = "<cmd>bd<CR>";
        key = "<leader>c";
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
