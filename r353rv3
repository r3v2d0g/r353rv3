#!/bin/zsh

############################################################################
# Copyright (c) 2019                                                       #
# All Rights Reserved to Matthieu Le brazidec                              #
# Unauthorized copying of this file, via any medium is strictly prohibited #
# Proprietary and confidential                                             #
############################################################################

DESCRIPTION="Reserved for future use."
VERSION="0.0.0"
HOMEPAGE="https://jesus.gg/"
KEYWORDS="[]"
CATEGORIES="[]"
LICENSE_FILE="LICENSE.txt"
LICENSE="\
###########################################################################################
# Copyright (c) 2019                                                                      #
# All Rights Reserved to Matthieu Le brazidec                                             #
# Unauthorized copying of any file in this project, via any medium is strictly prohibited #
# Proprietary and confidential                                                            #
###########################################################################################"
README_FILE="README.md"
README="\
# {{NAME}}

$DESCRIPTION

## LICENSE

\`\`\`
$LICENSE
\`\`\`"
AUTHORS='["Matthieu Le brazidec (r3v2d0g) <r3v2d0g@jesus.gg>"]'

base=$(pwd)

echo $LICENSE

for pkg in $*; do
	mkdir -p $pkg/src
	cd $pkg

	echo "$README" | sed "s/{{NAME}}/$pkg/g" >> $README_FILE
	echo "$LICENSE" >> $LICENSE_FILE
	cat $README_FILE | sed 's/^/\/\/! /' >> src/lib.rs

	echo '[package]' >> Cargo.toml
	echo "name = \"$pkg\"" >> Cargo.toml
	echo "description = \"$DESCRIPTION\"" >> Cargo.toml
	echo "version = \"$VERSION\"" >> Cargo.toml
	echo "homepage = \"$HOMEPAGE\"" >> Cargo.toml
	echo "keywords = $KEYWORDS" >> Cargo.toml
	echo "categories = $CATEGORIES" >> Cargo.toml
	echo "license-file = \"$LICENSE_FILE\"" >> Cargo.toml
	echo "readme = \"$README_FILE\"" >> Cargo.toml
	echo "authors = $AUTHORS" >> Cargo.toml
	echo "edition = \"2018\"" >> Cargo.toml

	cargo publish --allow-dirty

	cd $base
	rm -r $pkg
done
