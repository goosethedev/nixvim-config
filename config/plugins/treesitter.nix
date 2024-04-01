{
  plugins.treesitter = {
    enable = true;
    indent = true;
    # TODO: Learn how to use folds
    # folding = true;
  };

  plugins.treesitter-context = {
    enable = true;
    # Disable Context by default
    extraOptions = { enable = false; };
  };
}
