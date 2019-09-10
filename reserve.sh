#!/bin/sh

AUTHORS='["Matthieu Le brazidec <matthieu@lebrazidec.email"]'
HOMEPAGE="https://github.com/azastrael"

base=$(pwd)

for pkg in $*; do
	mkdir -p $pkg/src
	cd $pkg

	touch Cargo.toml
	touch src/lib.rs

	echo '[package]' >> Cargo.toml
	echo "name        = \"$pkg\"" >> Cargo.toml
	echo 'version     = "0.0.0"' >> Cargo.toml
	echo 'description = "Reserved for future use."' >> Cargo.toml
	echo 'license     = "MIT"' >> Cargo.toml
	echo "authors     = $AUTHORS" >> Cargo.toml
	echo "homepage    = \"$HOMEPAGE\"" >> Cargo.toml

	cargo publish --allow-dirty

	cd $base
done
