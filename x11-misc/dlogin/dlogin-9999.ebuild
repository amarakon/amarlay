EAPI=7

inherit git-r3

DESCRIPTION="Manage loginD from Dmenu"
HOMEPAGE="https://github.com/amarakon/dlogin"
EGIT_REPO_URI="https://github.com/amarakon/dlogin"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="x11-misc/dmenu"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
