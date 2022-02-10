EAPI=7

inherit nvim-plugin

MY_PN=${PN}
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/luochen1990/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="vim plugin: Rainbow Parentheses Improved"
HOMEPAGE="https://github.com/luochen1990/rainbow"
LICENSE="Apache-2.0"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )

src_prepare() {
	default
}
