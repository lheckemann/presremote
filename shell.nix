{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "presremote";
  src = pkgs.lib.cleanSource ./.;
  buildInputs = with pkgs; [mupdf.bin xdotool];
}
