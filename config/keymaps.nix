{ helpers, ...}:

{
  keymaps = let
    
    # Check if options value present. Else return empty {}
    elemAtOrDefault = list: index: (
      if index >= 0 && index < builtins.length list
      then builtins.elemAt list 3
      else {}
    );

    # Keymaps mapped [mode, key, action, options] -> {mode=..., key=..., action=..., options}
    maps = map (x: {
      mode =  builtins.elemAt x 0;
      key = builtins.elemAt x 1;
      action = builtins.elemAt x 2;
      options = elemAtOrDefault x 3;
    }) [
      # Movement
      # ["n" "g"]
    
      # General Management
      ["n" "<esc>" ":noh<CR>" { desc = "Clear search results"; }]
      ["n" "<leader>xs" ":w<CR>" { desc = "Save current buffer"; }]
      ["n" "<leader>xS" ":wa<CR>" { desc = "Save all buffers"; }]
      ["n" "<leader>xk" ":bdel<CR>" { desc = "Close buffer"; }]
      ["n" "<leader>xK" ":bdel!<CR>" { desc = "Close buffer without saving"; }]
      ["n" "<leader>xc" ":qa<CR>" { desc = "Exit Neovim"; }]
      ["n" "<leader>xC" ":qa!<CR>" { desc = "Exit Neovim without saving"; }]
          
      # Window management
      ["n" "<leader>wn" "<C-w>h" { desc = "Focus window left"; }]
      ["n" "<leader>wu" "<C-w>k" { desc = "Focus window up"; }]
      ["n" "<leader>we" "<C-w>j" { desc = "Focus window down"; }]
      ["n" "<leader>wi" "<C-w>l" { desc = "Focus window right"; }]
      
      ["n" "<leader>ws" "<C-w>s" { desc = "Split window horizontal"; }]
      ["n" "<leader>wv" "<C-w>v" { desc = "Split window vertical"; }]
      ["n" "<leader>wc" "<C-w>c" { desc = "Close window"; }]
      
      # Bufferline
      ["n" "<Tab>" ":BufferLineCycleNext<CR>"]
      ["n" "<S-Tab>" ":BufferLineCyclePrev<CR>"]
      ["n" "<leader>fp" ":BufferLinePick<CR>" { desc = "Pick open buffer"; }]

      # Nvim tree
      ["n" "<leader>ft" ":NvimTreeToggle<CR>" { desc = "Tree toggle"; }]

      # ToggleTerm
      ["n" "<leader>tf" ":ToggleTerm direction=float<CR>" { desc = "Floating terminal"; }]
      ["n" "<leader>th" ":ToggleTerm direction=horizontal<CR>" { desc = "Horizontal terminal"; }]
      ["n" "<leader>tv" ":ToggleTerm direction=vertical<CR>" { desc = "Vertical terminal"; }]
      ["n" "<leader>tt" ":ToggleTerm direction=tab<CR>" { desc = "Tabbed terminal"; }]

      ["t" "<esc>" "<C-\\><C-n>:ToggleTerm<CR>"]

      # Telescope -> Keymaps in plugins/telescope.nix
    ];
    
    in helpers.keymaps.mkKeymaps
      { options.silent = true; }
      (maps);

}
