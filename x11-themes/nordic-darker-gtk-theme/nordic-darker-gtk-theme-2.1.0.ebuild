# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Dark Gtk3.20+ theme created using the awesome Nord color pallete."
HOMEPAGE="https://www.nordtheme.com https://github.com/EliverLara/Nordic"
SRC_URI="https://github.com/EliverLara/Nordic/releases/download/v${PV}/Nordic-darker.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~riscv x86"
S="${WORKDIR}/Nordic-darker"

#src_prepare() {
#	default
#	find . -name 'Makefile' -delete || die
#}

src_install() {
	insinto /usr/share/themes/Nordic-darker
	doins -r gtk-2.0/ gtk-3.0/ metacity-1/ index.theme

	einstalldocs
}
