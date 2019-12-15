#!/bin/sh

############################################################################
# Copyright (c) 2019                                                       #
# All Rights Reserved to Matthieu Le brazidec                              #
# Unauthorized copying of this file, via any medium is strictly prohibited #
# Proprietary and confidential                                             #
############################################################################

DESCRIPTION="Reserved for future use."
LICENSE="MIT"
AUTHORS='["Matthieu Le brazidec <matthieu@lebrazidec.email>"]'
HOMEPAGE="https://github.com/azastrael"

base=$(pwd)

echo ''
echo '###########################################################################################'
echo '# Copyright (c) 2019                                                                      #'
echo '# All Rights Reserved to Matthieu Le brazidec                                             #'
echo '# Unauthorized copying of any file in this project, via any medium is strictly prohibited #'
echo '# Proprietary and confidential                                                            #'
echo '###########################################################################################'
echo ''

for pkg in $*; do
	mkdir -p $pkg/src
	cd $pkg

	touch Cargo.toml
	touch src/lib.rs

	echo '[package]' >> Cargo.toml
	echo "name        = \"$pkg\"" >> Cargo.toml
	echo 'version     = "0.0.0"' >> Cargo.toml
	echo "description = \"$DESCRIPTION\"" >> Cargo.toml
	echo "license     = \"MIT\"" >> Cargo.toml
	echo "authors     = $AUTHORS" >> Cargo.toml
	echo "homepage    = \"$HOMEPAGE\"" >> Cargo.toml

	cargo publish --allow-dirty

	cd $base
	rm -r $pkg
done
