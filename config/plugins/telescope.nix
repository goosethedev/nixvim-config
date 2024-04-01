{
  plugins.telescope = {
    enable = true;

    extensions = {
      file_browser = { enable = true; };
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
        desc = "Quick Find";
      };
      "<leader>ff" = {
        action = "find_files";
        desc = "Tel. Find Files";
      };
      "<leader>fh" = {
        action = "help_tags";
        desc = "Tel. Help Search";
      };
      # Breaks nvim for some reason
      # "<leader>fr" = {
      # 	action = "file_browser";
      # 	desc = "Tel. Browse Files";
      # };
      "<leader>fe" = {
        action = "live_grep";
        desc = "Tel. Live grep";
      };
      "<leader>fg" = {
        action = "git_files";
        desc = "Tel. Git Files";
      };
      "<leader>fb" = {
        action = "buffers";
        desc = "Tel. Open Buffers";
      };
    };
  };
}
