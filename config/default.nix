{
  imports = [
    ./options.nix  # vim.opt vim.g ...
    ./keymaps.nix  # keymaps = {...}
    ./plugins      # all plugins
  ];

  # Other configs
  config = {

    clipboard.providers.wl-copy.enable = true;

    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
    };
    
  };
}
