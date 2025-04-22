{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ];
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
    cmp-buffer.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-clippy.enable = true;
    lsp-format.enable = true;
    godot.enable = true;
    bacon.enable = true;
    treesitter.enable = true;
    rust-tools.enable = true;
    neo-tree.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = true;
    };

    lsp = {
      enable = true;
      servers = {
        rust-analyzer = {
          enable = true;
          autostart = true;
          installCargo = true;
          installRustc = true;
        };
        nixd.enable = true;
        typos-lsp.enable = true;
        ast-grep.enable = true;
      };
    };
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
}
