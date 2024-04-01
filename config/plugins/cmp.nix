{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
  };

  plugins.cmp.settings = {
    mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-l>" = "cmp.mapping.scroll_docs(-4)";
      "<C-m>" = "cmp.mapping.close()";
      "<C-n>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      # "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      # "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<Right>" = "cmp.mapping.confirm({ select = true })";
    };

    # Available sources:
    # https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
    sources = [
      {name = "nvim_lsp";} # LSP completion
      {name = "nvim_lsp_document_symbol";}
      {name = "nvim_lsp_signature_help";}
      {name = "nvim_lua";} # Lua completion
      {name = "plugins";}
      {name = "treesitter";}
      {name = "luasnip";} # Snippets
      # { name = "ultisnips"; } # Seems to break nvim
      {name = "path";} # System paths
      {name = "buffer";} # Text from buffer
      {name = "dotenv";} # ENV vars
    ];

    # Set luasnip snippets
    snippets.expand = ''
      function(args)
        require('luasnip').lsp_expand(args.body)
      end
    '';

    window = {
      completion.border = "rounded";
      documentation.border = "rounded";
    };
  };
}
