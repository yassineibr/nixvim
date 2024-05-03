{
  plugins.nvim-tree.enable = true;

  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Explore<CR>";
      options = {
        silent = true;
      };
    }
    {
      key = "<leader>t";
      action = "<cmd>NvimTreeToggle<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
