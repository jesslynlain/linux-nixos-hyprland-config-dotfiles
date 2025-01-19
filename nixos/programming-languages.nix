{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    bun
    lua
    zig
    fnm
    gleam
  ];
}
