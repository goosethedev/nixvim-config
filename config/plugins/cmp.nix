{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    settings.mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      # "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      # "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    };

    # Available sources:
    # https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "nvim_lua"; }
      { name = "luasnip"; }
      { name = "path"; }
      { name = "buffer"; }
      { name = "dotenv"; }
    ];
  };
}
