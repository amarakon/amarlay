EAPI=7

inherit git-r3 optfeature savedconfig toolchain-funcs

DESCRIPTION="A rewrite of neofetch in C. Includes features not seen in other fetch programs."
HOMEPAGE="https://github.com/Amarakon55/cfetch"
EGIT_REPO_URI="https://github.com/Amarakon55/cfetch"

LICENSE="MIT"
SLOT="0"

src_prepare() {
	default
	restore_config config.h
}

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
