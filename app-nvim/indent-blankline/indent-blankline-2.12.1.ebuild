EAPI=7

inherit nvim-plugin

MY_PN=${PN}.nvim
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/lukas-reineke/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="NVIM plugin: Indent guides"
HOMEPAGE="https://github.com/lukas-reineke/indent-blankline.nvim"
LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )

src_prepare() {
	default
}
