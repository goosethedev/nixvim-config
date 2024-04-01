{helpers, ...}: {
  keymaps = let
    # Helper for options: if not present return {}
    elemAtOrDefault = list: index: (
      if index >= 0 && index < builtins.length list
      then builtins.elemAt list 3
      else {}
    );

    # Keymaps list to dict
    # [mode, key, action, options] -> {mode=..., key=..., action=..., options}
    maps =
      map (x: {
        mode = builtins.elemAt x 0;
        key = builtins.elemAt x 1;
        action = builtins.elemAt x 2;
        options = elemAtOrDefault x 3;
      }) [
        # Basic bindings
        ["n" "U" "<C-r>"] # Redo on 'U'
        ["n" "<esc>" ":noh<CR>" {desc = "Clear search results";}]
        ["n" "<PageUp>" "<C-u>"] # Up half page
        ["n" "<PageDown>" "<C-d>"] # Down half page

        # Visual arrow vertical navigation
        ["n" "<Up>" "g<Up>"]
        ["n" "<Down>" "g<Down>"]
        ["i" "<Up>" "<C-o>g<Up>"]
        ["i" "<Down>" "<C-o>g<Down>"]

        # General Management
        ["n" "<leader>xs" ":w<CR>" {desc = "Save current buffer";}]
        ["n" "<leader>xS" ":wa<CR>" {desc = "Save all buffers";}]
        # https://stackoverflow.com/questions/1444322/how-can-i-close-a-buffer-without-closing-the-window
        ["n" "<leader>xk" ":bp<bar>sp<bar>bn<bar>bd<CR>" {desc = "Close buffer";}]
        ["n" "<leader>xK" ":bdel!<CR>" {desc = "Close buffer without saving";}]
        ["n" "<leader>xc" ":qa<CR>" {desc = "Exit Neovim";}]
        ["n" "<leader>xC" ":qa!<CR>" {desc = "Exit Neovim without saving";}]

        # Window management
        ["n" "<leader>wn" "<C-w>h" {desc = "Focus window left";}]
        ["n" "<leader>wu" "<C-w>k" {desc = "Focus window up";}]
        ["n" "<leader>we" "<C-w>j" {desc = "Focus window down";}]
        ["n" "<leader>wi" "<C-w>l" {desc = "Focus window right";}]
        ["n" "<leader>ww" "<C-w>p" {desc = "Focus next window";}]
        ["n" "<leader>wN" "<C-w>H" {desc = "Move window left";}]
        ["n" "<leader>wU" "<C-w>K" {desc = "Move window up";}]
        ["n" "<leader>wE" "<C-w>J" {desc = "Move window down";}]
        ["n" "<leader>wI" "<C-w>L" {desc = "Move window right";}]
        ["n" "<leader>ww" "<C-w>p" {desc = "Focus next window";}]

        ["n" "<leader>ws" "<C-w>s" {desc = "Split window horizontal";}]
        ["n" "<leader>wv" "<C-w>v" {desc = "Split window vertical";}]
        ["n" "<leader>wm" "<C-w><bar><C-w>_" {desc = "Maximize window";}]
        ["n" "<leader>wk" "<C-w>=" {desc = "Restore windows size";}]
        ["n" "<leader>wc" "<C-w>c" {desc = "Close window";}]

        # Code actions
        ["n" "<leader>cf" ":Format<CR>" {desc = "Format buffer";}]

        # UI toggles
        ["n" "<leader>ul" ":set nu!" {desc = "Toggle line numbers";}]
        ["n" "<leader>uL" ":set rnu!" {desc = "Toggle relative line numbers";}]
        ["n" "<leader>uw" ":set wrap!" {desc = "Toggle text wrap";}]
        ["n" "<leader>uc" ":TSContextToggle<CR>" {desc = "Toggle TS Context";}]

        # Bufferline
        ["n" "<leader>," ":BufferLinePick<CR>" {desc = "Quick Buffer Pick";}]
        ["n" "<Tab>" ":BufferLineCycleNext<CR>"]
        ["n" "<S-Tab>" ":BufferLineCyclePrev<CR>"]
        ["n" "<leader>bp" ":BufferLinePick<CR>" {desc = "Pick open buffer";}]
        ["n" "<leader>bt" ":BufferLineTogglePin<CR>" {desc = "Toggle pin";}]
        ["n" "<leader>bl" ":BufferLineCloseLeft<CR>" {desc = "Close all left buffers";}]
        ["n" "<leader>br" ":BufferLineCloseRight<CR>" {desc = "Close all right buffers";}]
        ["n" "<leader>bo" ":BufferLineCloseOthers<CR>" {desc = "Close all other buffers";}]

        # Nvim tree
        ["n" "<leader>ft" ":NvimTreeToggle<CR>" {desc = "Tree toggle";}]

        # ToggleTerm
        ["n" "<leader>tf" ":ToggleTerm direction=float<CR>" {desc = "Floating terminal";}]
        ["n" "<leader>th" ":ToggleTerm direction=horizontal<CR>" {desc = "Horizontal terminal";}]
        ["n" "<leader>tv" ":ToggleTerm direction=vertical<CR>" {desc = "Vertical terminal";}]
        ["n" "<leader>tt" ":ToggleTerm direction=tab<CR>" {desc = "Tabbed terminal";}]
        ["t" "<esc>" "<C-\\><C-n>:ToggleTerm<CR>"]

        # Telescope -> Keymaps in plugins/telescope.nix
        # If this is set in Telescope, it breaks
        [
          "n"
          "<leader>fr"
          "<cmd>Telescope file_browser<CR>"
          {desc = "Tel. File Browser";}
        ]
        # Can't set Telescope options on plugins/telescope.nix
        [
          "n"
          "<leader>fd"
          "<cmd>Telescope find_files hidden=true no_ignore=true<CR>"
          {desc = "Tel. Find in hidden files";}
        ]

        # Persistence
        [
          "n"
          "<leader>pr"
          "<cmd>lua require('persistence').load()<cr>"
          {desc = "Restore session for this directory";}
        ]
        [
          "n"
          "<leader>pl"
          "<cmd>lua require('persistence').load({ last = true })<cr>"
          {desc = "Restore last session";}
        ]
        [
          "n"
          "<leader>pd"
          "<cmd>lua require('persistence').stop()<cr>"
          {desc = "Disable saving this session";}
        ]

        # Comment-nvim -> Default keymaps work out-of-the-box
        # Configure them in plugins/comment-nvim
      ];
  in
    helpers.keymaps.mkKeymaps {options.silent = true;} maps;
}
