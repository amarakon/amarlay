EAPI=7

DESCRIPTION="A pandoc LaTeX template to convert markdown files to PDF or LaTeX."
HOMEPAGE="https://github.com/Wandmalfarbe/pandoc-latex-template"
SRC_URI="https://github.com/Wandmalfarbe/pandoc-latex-template/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/pandoc-latex-template-2.0.0"

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
