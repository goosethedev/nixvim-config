{
  config = {

    globals.mapleader = " ";
    globals.maplocalleader = " ";
    globals.have_nerd_font = true;

    options = {
      # Line numbers
      number = true;
      relativenumber = true;

      # Visual
      shiftwidth = 2; # Tab size
      termguicolors = true;
      mouse = "a";

      # Search case-insensitive, except if uppercase is used
      ignorecase = true;
      smartcase = true;

      # Other
      breakindent = true;
      splitright = true;
      splitbelow = true;
      clipboard = "unnamedplus";
      scrolloff = 10;
    };
  };
}
