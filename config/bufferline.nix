{
  plugins.bufferline = {
    enable = true;
  };

  keymaps = [
    {
      key = "<S-L>";
      action = "<cmd>bnext<CR>";
      options = {
        silent = true;
      };
    }
    {
      key = "<S-H>";
      action = "<cmd>bprev<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
