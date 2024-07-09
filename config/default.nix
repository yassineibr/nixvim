{ self, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./explorer.nix
    ./gitsigns.nix
    ./keymaps.nix
    ./options.nix
    ./other.nix
    ./telescope.nix
    ./toggleterm.nix
    # ./typst-preview.nix
    ./lsp.nix
  ];
}
