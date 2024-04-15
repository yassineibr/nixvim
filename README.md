# Nixvim

This is the configuration of neovim (NixVim) that I am running.
It is based on [this template](https://github.com/nix-community/nixvim/tree/main/templates/simple)

## Try This Config

You can try this config of neovim by running :

```sh
nix run github:yassineibr/nixvim
```

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

## References

- [NixVim](https://github.com/nix-community/nixvim)
