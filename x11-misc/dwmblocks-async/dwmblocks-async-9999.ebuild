# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 savedconfig toolchain-funcs

DESCRIPTION="UtkarshVerma's custom build of dwmblocks which updates blocks asynchronously."
HOMEPAGE="https://github.com/UtkarshVerma/dwmblocks-async"
EGIT_REPO_URI="https://github.com/UtkarshVerma/${PN}.git"

LICENSE="GPL-2"
SLOT="0"

DEPEND="x11-wm/dwm"
RDEPEND="${DEPEND}"

src_prepare() {
	default

	restore_config config.h
}

src_compile() {
	emake CC=$(tc-getCC)
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

	dodoc README.md

	save_config config.h
}
