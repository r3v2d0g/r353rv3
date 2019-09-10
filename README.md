# reserve.sh

A simple script to reserve [crates](https://crates.io/).

## Usage

1) Edit the `reserve.sh` file to use your name (`$AUTHORS`) and an URL of your choice (`$HOMEPAGE`).
2) Run `cargo login` (after creating an account on [https://crate.io/](https://crates.io) if you don't already have one).
3) Run `./reserve.sh [CRATES...]` with `CRATES` as the list of crates you want to reserve (separated by a whitespace).

**NOTE**: the newly created crates will be published as being under the MIT license (you can modify this in the `reserve.sh` file).
**NOTE**: a new directory will be created for each crate. You can safely remove it.
