{
  clipboard.providers.wl-copy.enable = true;

  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";

    integrations = {
      alpha = true;
      cmp = true;
      gitsigns = true;
      markdown = true;
      neotree = true;
      notify = true;
      nvimtree = true;
      treesitter = true;
      treesitter_context = true;
      ts_rainbow = true;
      which_key = true;
      window_picker = true;
      telescope.enabled = true;
      indent_blankline.enabled = true;
      mini.enabled = true;
      native_lsp = {
        enabled = true;
        inlay_hints = { background = true; };
        underlines = {
          errors = [ "underline" ];
          hints = [ "underline" ];
          information = [ "underline" ];
          warnings = [ "underline" ];
        };
      };
    };
  };

  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };

  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Tabs to two spaces
    tabstop = 2;
    softtabstop = 2;
    showtabline = 2;
    shiftwidth = 2;
    expandtab = true;

    # Auto-indenting with spaces
    # breakindent (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
    # smartindent = true;
    breakindent = true;

    # Better splitting
    splitright = true;
    splitbelow = true;

    # Better search
    ignorecase = true; # Search case-insensitive
    smartcase = true; # Except if uppercase is used
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Prevent the screen from jumping on signs
    # e.g. gitsigns, dap breakpoints, etc.
    signcolumn = "yes";

    # Place a column line
    colorcolumn = "80";

    # Misc
    wrap = true; # Text wrap
    mouse = "a"; # Enable mouse
    termguicolors = true; # 24-bit colors
    clipboard = "unnamedplus"; # Use clipboard for yanking
    scrolloff = 10; # Keep 10 lines up and down when scrolling

    # Others to try from Neve

    # Enable incremental searching
    # hlsearch = true;
    # incsearch = true;

    # Decrease updatetime
    # updatetime = 50; # faster completion (4000ms default)

    # Set completeopt to have a better completion experience
    # completeopt = ["menuone" "noselect" "noinsert"]; # mostly just for cmp

    # Enable persistent undo history
    # swapfile = false;
    # backup = false;
    # undofile = true;

    # Enable cursor line highlight
    # cursorline = true; # Highlight the line where the cursor is located

    # Set fold settings
    # These options were recommended by nvim-ufo
    # See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
    # foldcolumn = "0";
    # foldlevel = 99;
    # foldlevelstart = 99;
    # foldenable = true;

    # Reduce which-key timeout to 10ms
    # timeoutlen = 10;

    # Set encoding type
    # encoding = "utf-8";
    # fileencoding = "utf-8";

    # Change cursor options
    guicursor = [
      "n-v-c:block" # Normal, visual, command-line: block cursor
      "i-ci-ve:ver25" # Insert, command-line insert, visual-exclude: vertical bar cursor with block cursor, use "ver25" for 25% width
      "r-cr:hor20" # Replace, command-line replace: horizontal bar cursor with 20% height
      "o:hor50" # Operator-pending: horizontal bar cursor with 50% height
      "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor" # All modes: blinking settings
      "sm:block-blinkwait175-blinkoff150-blinkon175" # Showmatch: block cursor with specific blinking settings
    ];

    # Enable chars list
    # list = true; # Show invisible characters (tabs, eol, ...)
    # listchars = "eol:↲,tab:|->,lead:·,space: ,trail:•,extends:→,precedes:←,nbsp:␣";

    # More space in the neovim command line for displaying messages
    # cmdheight = 2;

    # We don't need to see things like INSERT anymore
    # showmode = false;

    # Maximum number of items to show in the popup menu (0 means "use available screen space")
    # pumheight = 0;

    # laststatus = 3; # (https://neovim.io/doc/user/options.html#'laststatus')
  };

}
