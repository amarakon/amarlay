EAPI=7

inherit git-r3

DESCRIPTION="Simple dmenu calculator"
HOMEPAGE="https://github.com/amarakon/cmenu"
EGIT_REPO_URI="https://github.com/amarakon/cmenu"

LICENSE="AGPL-3"
SLOT="0"

RDEPEND="x11-misc/dmenu"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	optfeature "clipboard support" x11-misc/xclip
}
