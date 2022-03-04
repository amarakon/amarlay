EAPI=7

inherit git-r3 nvim-plugin optfeature

MY_PN=vim-${PN}
MY_P=${MY_PN}-${PV}
EGIT_REPO_URI="https://github.com/vim-pandoc/${MY_PN}"
S=${WORKDIR}/${MY_P}

DESCRIPTION="VIM plugin: Rmarkdown support for VIM"
HOMEPAGE="https://github.com/vim-pandoc/vim-rmarkdown"
VIM_PLUGIN_HELPFILES="${PN}.txt"
DOCS=( README.md )

RDEPEND="app-nvim/pandoc"

pkg_postinst() {
	optfeature "syntax highlighting" app-nvim/pandoc-syntax
}
