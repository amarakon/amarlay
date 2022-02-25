EAPI=7

inherit git-r3

DESCRIPTION="Manage loginD from Dmenu"
HOMEPAGE="https://github.com/Amarakon55/dlogin"
EGIT_REPO_URI="https://github.com/Amarakon55/dlogin"

LICENSE="GPL-2"
SLOT="0"
IUSE="minimal"

RDEPEND="
	x11-misc/dmenu
	sys-auth/elogind
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
