{ pkgs ? import (fetchTarball https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz) { } }:
pkgs.mkShell {
  buildInputs = [
    (pkgs.writers.writeDashBin "edit-map" ''
      ${pkgs.tiled}/bin/tiled ${toString ./map.json}
    '')
  ];
}
