EAPI=7

DESCRIPTION="Manage files using Dmenu"
HOMEPAGE="https://github.com/Wandmalfarbe/pandoc-latex-template"
SRC_URI="https://github.com/Wandmalfarbe/pandoc-latex-template/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
dev-texlive/texlive-latexextra
dev-texlive/texlive-xetex
"

src_install() {
	insinto ~/.local/share/pandoc/templates
	doins eisvogel.latex
}
