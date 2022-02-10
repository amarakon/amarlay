EAPI=7

inherit nvim-plugin

MY_PN=${PN}
MY_P=${MY_PN}-${PV}
SRC_URI="https://github.com/lilydjwg/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86"
S=${WORKDIR}/${MY_P}

DESCRIPTION="vim plugin, colorize all text in the form #rrggbb or #rgb."
HOMEPAGE="https://github.com/lilydjwg/colorizer"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.mkd )

src_prepare() {
	default
}
