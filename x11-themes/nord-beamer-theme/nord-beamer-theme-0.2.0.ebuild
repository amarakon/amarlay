EAPI=7

DESCRIPTION="Nord beamer theme"
HOMEPAGE="https://github.com/junwei-wang/beamerthemeNord"
SRC_URI="https://github.com/junwei-wang/beamerthemeNord/archive/refs/tags/v${PV}.tar.gz"

SLOT="0"
KEYWORDS="amd64 ~riscv x86"
S="${WORKDIR}/beamerthemeNord-0.2.0"

src_install() {
	insinto /usr/share/texmf-site/tex/latex/beamer/base/themes/color
	doins beamercolorthemeNord.sty

	insinto /usr/share/texmf-site/tex/latex/beamer/base/themes/font
	doins beamerfontthemeNord.sty

	insinto /usr/share/texmf-site/tex/latex/beamer/base/themes/theme
	doins beamerthemeNord.sty

	einstalldocs
}
