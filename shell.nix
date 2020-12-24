{ pkgs ? import (fetchTarball https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz) { } }:
pkgs.mkShell {
  buildInputs = [
    pkgs.tiled
  ];
}
