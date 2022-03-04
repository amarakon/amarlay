EAPI=7

inherit git-r3 nvim-plugin optfeature

MY_PN=vim-${PN}
MY_P=${MY_PN}-${PV}
EGIT_REPO_URI="https://github.com/vim-pandoc/${MY_PN}"

DESCRIPTION="VIM plugin: pandoc markdown syntax"
HOMEPAGE="https://github.com/vim-pandoc/vim-pandoc-syntax"
VIM_PLUGIN_HELPFILES="${PN}.txt"
DOCS=( README.md )

src_prepare() {
	default

	# remove test dir
	rm -r tests || die
}

pkg_postinst() {
	optfeature "filetype detection" app-nvim/pandoc
}
