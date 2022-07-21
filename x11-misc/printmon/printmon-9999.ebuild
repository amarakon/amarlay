EAPI=7

inherit git-r3

DESCRIPTION="Print the current monitor"
HOMEPAGE="https://github.com/amarakon/printmon"
EGIT_REPO_URI="https://github.com/amarakon/printmon"

LICENSE="AGPL-3"
SLOT="0"

RDEPEND="x11-apps/xrandr x11-misc/xdotool"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
