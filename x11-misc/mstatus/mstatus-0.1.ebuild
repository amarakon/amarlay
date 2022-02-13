EAPI=8

inherit optfeature

DESCRIPTION="Minimal status program for DWM preconfigured out of the box"
HOMEPAGE="https://github.com/Amarakon55/mstatus"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
IUSE="minimal"
KEYWORDS="amd64 x86"

RDEPEND="
	!minimal? (
		sys-apps/lm-sensors
		app-admin/sysstat
		sys-power/acpi
	)"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	elog "color support: https://dwm.suckless.org/patches/status2d"
	elog "icon support: emerge media-fonts/nerd-fonts-inconsolata"
}
