EAPI=7
inherit nvim-plugin

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/vim-syntastic/syntastic.git"
else
	SRC_URI="https://github.com/vim-syntastic/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86"
fi

DESCRIPTION="VIM plugin: Syntax checking hacks for vim"
HOMEPAGE="https://www.vim.org/scripts/script.php?script_id=2736 https://github.com/vim-syntastic/syntastic/"
LICENSE="WTFPL-2"

VIM_PLUGIN_HELPFILES="${PN}"

src_prepare() {
	default
	rm -r _assets || die
}

pkg_postinst() {
	if [[ -z ${REPLACING_VERSIONS} ]] ; then
		elog "Syntastic has many optional dependencies depending on the type"
		elog "of syntax checking being performed. Look in the related files in"
		elog "the syntax_checkers directory to help figure out what programs"
		elog "different languages need."
	fi
}
