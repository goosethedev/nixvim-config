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

      lua-ls.enable = true; # Lua
      nil_ls.enable = true; # Nix
      tsserver.enable = true; # TS/JS
    };
  };
}
