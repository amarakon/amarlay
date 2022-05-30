EAPI=7

DESCRIPTION="Nord beamer theme"
HOMEPAGE="https://github.com/amarakon/beamerthemeNord"
SRC_URI="https://github.com/amarakon/beamerthemeNord/archive/refs/tags/v${PV}.tar.gz"

SLOT="0"
KEYWORDS="amd64 ~riscv x86"
S="${WORKDIR}/beamerthemeNord-${PV}"

RDEPEND="dev-tex/latex-beamer"

src_compile() { : }

src_install() {
	insinto /usr/share/texmf-site/tex/latex/beamer/base/themes/color
	doins beamercolorthemeNord.sty

	insinto /usr/share/texmf-site/tex/latex/beamer/base/themes/font
	doins beamerfontthemeNord.sty

	insinto /usr/share/texmf-site/tex/latex/beamer/base/themes/theme
	doins beamerthemeNord.sty

	einstalldocs
}
