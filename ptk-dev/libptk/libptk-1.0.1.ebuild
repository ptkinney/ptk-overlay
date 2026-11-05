# Copyright 2026 Paul Kinney
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Basic utility library"
HOMEPAGE="https://github.com"
SRC_URI="https://github.com/ptkinney/libptk/archive/refs/tags/v1.0.1.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_compile() {
	# Explicitly pass Portage's known ${PV} version straight into the Makefile
	emake \
		CC="$(tc-getCC)" \
		AR="$(tc-getAR)" \
		RANLIB="$(tc-getRANLIB)" \
		VERSION="${PV}"
}

src_install() {
	emake DESTDIR="${D}" LIBDIR="/usr/$(get_libdir)" VERSION="${PV}" install
}
