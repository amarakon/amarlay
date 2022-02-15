EAPI=7

inherit git-r3

DESCRIPTION="Manage CPU settings through the command-line"
HOMEPAGE="https://github.com/Amarakon55/cpu-cli"
EGIT_REPO_URI="https://github.com/Amarakon55/cpu-cli"

LICENSE="GPL-2"
SLOT="0"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
