# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 optfeature savedconfig toolchain-funcs

DESCRIPTION="A rewrite of neofetch in C. Includes features not seen in other fetch programs."
HOMEPAGE="https://github.com/amarakon/cfetch"
EGIT_REPO_URI="https://github.com/amarakon/cfetch"

LICENSE="MIT"
SLOT="0"

RDEPEND="
x11-libs/libX11
x11-libs/libpciaccess
"

src_prepare() {
	default
	restore_config config.h
}

src_compile() {
	emake cfetch
}

src_install() {
	insinto "/usr/bin"
	doins -r cfetch
	save_config config.h
}

pkg_postinst() {
	chmod 755 /usr/bin/cfetch
}
