EAPI=7

inherit git-r3 optfeature

DESCRIPTION="Browser indenpendently manage bookmarks from Dmenu"
HOMEPAGE="https://github.com/Amarakon55/dbmks"
EGIT_REPO_URI="https://github.com/Amarakon55/dbmks"

LICENSE="GPL-2"
SLOT="0"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	optfeature "external menu support" x11-misc/dmenu
	optfeature "clipboard support" x11-misc/xclip
}
