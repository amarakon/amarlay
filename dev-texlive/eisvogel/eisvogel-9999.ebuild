EAPI=7

DESCRIPTION="Manage files using Dmenu"
HOMEPAGE="https://github.com/Wandmalfarbe/pandoc-latex-template"
EGIT_REPO_URI="https://github.com/Wandmalfarbe/pandoc-latex-template"

LICENSE="BSD-3"
SLOT="0"

RDEPEND="
dev-texlive/texlive-latexextra
dev-texlive/texlive-xetex
"

src_install() {
	insinto ~/.local/share/pandoc/templates
	doins eisvogel.latex
}
