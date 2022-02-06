EAPI=7

#inherit git-r3 savedconfig toolchain-funcs
inherit git-r3 optfeature savedconfig toolchain-funcs

DESCRIPTION="A rewrite of neofetch in C. Currently only supports Linux and Xorg."
HOMEPAGE="https://github.com/Amarakon55/cfetch"
SRC_URI=""
EGIT_REPO_URI="https://github.com/Amarakon55/cfetch"

LICENSE="MIT"
SLOT="0"

src_compile() {
	emake cfetch
}

src_install() {
	insinto "/usr/bin"
	doins -r cfetch
	save_config config.h
}

pkg_postinst() {
	chmod 755 /usr/bin/cfetch
}

