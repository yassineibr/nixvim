{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<C-p>" = {
        action = "git_files";
        options.desc = "Telescope Git Files";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Telescope Live Grep";
      };
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Telescope Find Files";
      };
      "<leader>fr" = {
        action = "resume";
        options.desc = "Telescope Resume";
      };
    };
    settings = {
      pickers = {
        find_files = {
          hidden = true;
          file_ignore_patterns = ["%.git/.*"];
        };
      };
    };
  };
}
