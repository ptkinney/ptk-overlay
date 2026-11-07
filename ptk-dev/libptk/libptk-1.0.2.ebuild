# Copyright 2026 Paul Kinney
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Basic utility library."
HOMEPAGE="https://github.com/ptkinney/libptk"
SRC_URI="https://github.com/ptkinney/libptk/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}" VERSION="${VERSION}"
}

src_install() {
    dolib.so libptk.so.${PV}
}
