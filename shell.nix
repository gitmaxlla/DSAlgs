let pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a60651b217d2e529729cbc7d989c19f3941b9250.tar.gz") {};

in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      jupyter
      pandas
      numpy
      matplotlib
      ipympl
    ]))
  ];
}
