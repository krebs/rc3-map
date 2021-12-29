{ pkgs ?  import <nixpkgs> {} }:
pkgs.mkShell {

  buildInputs = with pkgs; [
    pkgs.tiled
  ];

}
