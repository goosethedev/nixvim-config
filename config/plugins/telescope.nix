{
  plugins.telescope = {
    enable = true;

    extensions = {
      file_browser = {
      	enable = true;
      };
      fzf-native = {
      	enable = true;
      	fuzzy = true;
      };
      frecency = {
      	enable = true;
      	showScores = true;
      };
      # Maybe setup ui-select later?
      media_files.enable = true;
    };

    keymaps = {
      "<leader>." = {
      	action = "find_files";
      	desc = "Telescope Find Files";
      };
      "<leader>ff" = {
      	action = "find_files";
      	desc = "Telescope Find Files";
      };
      "<leader>fh" = {
      	action = "help_tags";
      	desc = "Telescope Help Search";
      };
      # Breaks nvim for some reason
      # "<leader>fr" = {
      # 	action = "file_browser";
      # 	desc = "Telescope Browse Files";
      # };
      "<leader>fe" = {
        action = "live_grep";
        desc = "Telescope Live grep";
      };
      "<leader>fg" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
      "<leader>fb" = {
      	action = "buffers";
      	desc = "Telescope Open Buffers";
      };
    };
  };
}
