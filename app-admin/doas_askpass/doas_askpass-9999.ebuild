EAPI=7

inherit git-r3

DESCRIPTION="sudo -A equivalent for Doas"
HOMEPAGE="https://github.com/amarakon/doas_askpass"
EGIT_REPO_URI="https://github.com/amarakon/doas_askpass"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="app-admin/doas dev-tcltk/expect"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}

pkg_postinst() {
	optfeature "Dmenu as interface" x11-misc/dmenu
}
