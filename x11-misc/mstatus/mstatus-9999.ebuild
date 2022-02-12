EAPI=8

inherit git-r3 optfeature

DESCRIPTION="The most minimal status program for DWM. It comes preconfigured out of the box."
HOMEPAGE="https://github.com/Amarakon55/mstatus"
EGIT_REPO_URI="https://github.com/Amarakon55/mstatus"

LICENSE="GPL-2"
SLOT="0"
IUSE="minimal"

# fzf/mpv/yt-dlp "can" be optfeatures depending on configuration, but depend
# on them so it works as expected out-of-the-box while allowing to disable.
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
	optfeature "color support: https://dwm.suckless.org/patches/status2d"
	optfeature "icon support" media-fonts/nerd-fonts-inconsolata
}
