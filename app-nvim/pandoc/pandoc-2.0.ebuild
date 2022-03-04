EAPI=7

inherit nvim-plugin optfeature

MY_PN=vim-${PN}
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/${MY_PN}/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}
DESCRIPTION="VIM plugin: pandoc integration and utilities"
HOMEPAGE="https://github.com/vim-pandoc/vim-pandoc"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.mkd )

pkg_postinst() {
	optfeature "syntax highlighting" app-nvim/pandoc-syntax
}
