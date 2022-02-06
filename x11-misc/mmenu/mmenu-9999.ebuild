EAPI=7

inherit git-r3 optfeature

DESCRIPTION="A dmenu wrapper which works like dmenu_run, but evaluates math you give it to."
HOMEPAGE="https://github.com/mortie/mmenu"
SRC_URI=""
EGIT_REPO_URI="https://github.com/mortie/mmenu"

if [[ ${PV} =~ ^9+$ ]] ; then
    EGIT_COMMIT=""
else
    EGIT_COMMIT="v${PV}"
    KEYWORDS="~amd64 ~x86"
fi

#LICENSE=""
SLOT="0"
IUSE=""

#RDEPEND=""
#DEPEND=""

src_install() {
	insinto "/usr/bin"
	doins -r mmenu
}

pkg_postinst() {
	chmod 755 /usr/bin/mmenu
	optfeature "clipboard support" x11-misc/xsel
}
