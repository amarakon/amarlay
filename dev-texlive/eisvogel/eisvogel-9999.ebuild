EAPI=7

DESCRIPTION="A pandoc LaTeX template to convert markdown files to PDF or LaTeX."
HOMEPAGE="https://github.com/Wandmalfarbe/pandoc-latex-template"
EGIT_REPO_URI="https://github.com/Wandmalfarbe/pandoc-latex-template"
S="${WORKDIR}/pandoc-latex-template-2.0.0"

LICENSE="BSD-3"
SLOT="0"

RDEPEND="
dev-texlive/texlive-latexextra
dev-texlive/texlive-xetex
"

src_install() {
	insinto /home/amarakon/.local/share/pandoc/templates
	doins eisvogel.tex

	einstalldocs
}

pkg_postinst() {
	mv /home/amarakon/.local/share/pandoc/templates/eisvogel.tex /home/amarakon/.local/share/pandoc/templates/eisvogel.latex
}