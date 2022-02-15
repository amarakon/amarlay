EAPI=7

inherit git-r3

DESCRIPTION="Manage CPU settings through Dmenu"
HOMEPAGE="https://github.com/Amarakon55/dcpu"
EGIT_REPO_URI="https://github.com/Amarakon55/dcpu"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="sys-apps/cpu-cli"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
