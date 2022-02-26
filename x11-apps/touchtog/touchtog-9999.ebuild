EAPI=7

DESCRIPTION="Toggle Touchpad On and Off"
HOMEPAGE="https://github.com/Amarakon55/touchtog"
EGIT_REPO_URI="https://github.com/Amarakon55/touchtog"

LICENSE="GPL-2"
SLOT="0"
IUSE="minimal"

RDEPEND="
	x11-apps/xinput
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}