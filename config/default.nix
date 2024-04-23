{self, ...}: {
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./other.nix
    ./bufferline.nix
    ./cmp.nix
    ./toggleterm.nix
    ./telescope.nix
    ./explorer.nix
    ./typst-preview.nix
  ];
}
