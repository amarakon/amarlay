EAPI=8

inherit git-r3 optfeature

DESCRIPTION="The most minimal status program for DWM. It comes preconfigured out of the box."
HOMEPAGE="https://github.com/amarakon/mstatus"
EGIT_REPO_URI="https://github.com/amarakon/mstatus"

LICENSE="AGPL-3"
SLOT="0"
IUSE="minimal"

RDEPEND="
	!minimal? (
		sys-apps/lm-sensors
		sys-power/cpupower
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
