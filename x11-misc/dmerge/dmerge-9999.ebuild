EAPI=8

inherit git-r3

DESCRIPTION="Dmenu wrapper for Emerge "
HOMEPAGE="https://github.com/amarakon/dmerge"
EGIT_REPO_URI="https://github.com/amarakon/dmerge"

LICENSE="AGPL-3"
SLOT="0"

RDEPEND="sys-apps/portage"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
