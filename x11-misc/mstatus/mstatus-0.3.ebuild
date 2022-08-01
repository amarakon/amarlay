# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit optfeature savedconfig

DESCRIPTION="Minimal status program for DWM preconfigured out of the box"
HOMEPAGE="https://github.com/amarakon/mstatus"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
IUSE="minimal"
KEYWORDS="amd64 x86"

RDEPEND="
	!minimal? (
		sys-apps/lm-sensors
		sys-power/cpupower
		sys-power/acpi
	)"

src_prepare(){
	default
	restore_config mstatus
}

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
	save_config mstatus
}

pkg_postinst() {
	elog "color support: https://dwm.suckless.org/patches/status2d"
	elog "icon support: emerge media-fonts/nerd-fonts-inconsolata"
}
