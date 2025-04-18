{
  plugins.lsp = {
    enable = true;

    keymaps = {
      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };

      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        "<leader>a" = "code_action";
      };
    };
    servers = {
      pyright.enable = true;
      # typst-lsp.enable = true;
      nixd.enable = true;
      gopls.enable = true;
      templ.enable = true;
      tinymist.enable = true;
      terraform_lsp.enable = true;
      # rust-analyzer.enable = true;
      # rust-analyzer.installCargo = false;
      # rust-analyzer.installRustc = false;
    };
  };
}
