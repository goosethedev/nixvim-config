{
  plugins.lsp-format.enable = true;
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;

    sources = {
      # Global
      completion.luasnip.enable = true;
      formatting.codespell.enable = true;

      # Nix
      code_actions.statix.enable = true;
      diagnostics.statix.enable = true;
      diagnostics.deadnix.enable = true;
      formatting.alejandra.enable = true;
      # nixfmt formats incorrectly tons of stuff. alejandra seems better
      # formatting.nixfmt.enable = true;

      # Python
      formatting.black.enable = true;

      # JS/TS
      formatting.prettier.enable = true;
      formatting.prettier.disableTsServerFormatter = true;
    };
  };
}
