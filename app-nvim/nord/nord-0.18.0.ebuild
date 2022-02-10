EAPI=7

inherit nvim-plugin

MY_PN=${PN}-vim
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/arcticicestudio/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="An arctic, north-bluish clean and elegant Vim theme."
HOMEPAGE="https://www.nordtheme.com/ports/vim https://github.com/arcticicestudio/nord-vim"
LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( CHANGELOG.md README.md )

src_prepare() {
	default

	# remove test dir
	#rm -r t || die
}
