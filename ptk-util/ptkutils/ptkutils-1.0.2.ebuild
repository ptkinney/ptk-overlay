# Copyright 2026 Paul Kinney
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="My utilities."
HOMEPAGE="https://github.com/ptkinney/ptkutils"
SRC_URI="https://github.com/ptkinney/ptkutils/archive/refs/tags/v1.0.1.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="ptk-dev/libptk"
DEPEND="${RDEPEND}"
BDEPEND=""

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}"
}

src_install() {
	dobin detab
	dobin stamp
	doman man/man1/detab.1ptk
	doman man/man1/stamp.1ptk
}
