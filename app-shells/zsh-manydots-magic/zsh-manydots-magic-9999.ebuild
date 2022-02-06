EAPI=7

inherit git-r3 optfeature

DESCRIPTION="zle tweak for emulating \`...\`, \`==\`, \`../..\`, etc."
HOMEPAGE="https://github.com/knu/zsh-manydots-magic"
SRC_URI=""
EGIT_REPO_URI="https://github.com/knu/zsh-manydots-magic"

if [[ ${PV} =~ ^9+$ ]] ; then
    EGIT_COMMIT=""
else
    EGIT_COMMIT="v${PV}"
    KEYWORDS="~amd64 ~x86"
fi

#LICENSE="BSD"
SLOT="0"
IUSE=""

#RDEPEND=""
#DEPEND=""

src_install() {
	insinto "/usr/share/zsh/site-functions"
	doins -r manydots-magic
}
