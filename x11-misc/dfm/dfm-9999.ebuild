EAPI=7

DESCRIPTION="Manage files using Dmenu"
HOMEPAGE="https://github.com/Amarakon55/dfm"
EGIT_REPO_URI="https://github.com/Amarakon55/dfm"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
app-shells/bash
x11-misc/dmenu
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
