{
  filetype.extension.typ = "typst";
  globals.mapleader = " ";

  colorschemes.catppuccin = {
    enable = true;
    settings.transparent_background = true;
  };

  plugins.treesitter.enable = true;
  plugins.noice.enable = true;

  plugins.lualine.enable = true;

  plugins.which-key.enable = true;
  plugins.lsp = {
    enable = true;
    servers = {
      typst-lsp.enable = true;
      nixd.enable = true;
      rust-analyzer.enable = true;
      rust-analyzer.installCargo = false;
      rust-analyzer.installRustc = false;
    };
  };
}
