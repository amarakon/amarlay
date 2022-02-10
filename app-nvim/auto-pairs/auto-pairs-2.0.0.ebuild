EAPI=7

inherit nvim-plugin

MY_PN=${PN}
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/jiangmiao/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="Vim plugin, insert or delete brackets, parens, quotes in pair"
HOMEPAGE="https://github.com/jiangmiao/auto-pairs"
#LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )

src_prepare() {
	default
}
