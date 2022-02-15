EAPI=7

DESCRIPTION="Manage CPU settings through the command-line"
HOMEPAGE="https://github.com/Amarakon55/cpu-cli"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
