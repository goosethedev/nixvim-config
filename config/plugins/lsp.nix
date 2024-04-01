{
  plugins.lsp = {
    enable = true;

    servers = {
      # Rust
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };

      ruff-lsp.enable = true; # Python

      dockerls.enable = true; # Docker
      lua-ls.enable = true; # Lua
      nil_ls.enable = true; # Nix
      tsserver.enable = true; # TS/JS
    };
  };

  plugins.lspkind = {
    enable = true;
    symbolMap = {
      Copilot = "";
    };
    cmp = {
      maxWidth = 50;
      ellipsisChar = "...";
    };
  };
}
