EAPI=7

inherit git-r3

DESCRIPTION="Dmenu prompt to select an emoji to copy to the clipboard"
HOMEPAGE="https://github.com/Amarakon55/dmoji"
EGIT_REPO_URI="https://github.com/Amarakon55/dmoji"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	x11-misc/dmenu
	x11-misc/xclip
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
