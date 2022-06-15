EAPI=7

inherit git-r3

DESCRIPTION="Minimal screenshot utility using ImageMagick, alternative to scrot"
HOMEPAGE="https://github.com/amarakon/magickshot"
EGIT_REPO_URI="https://github.com/amarakon/magickshot"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="media-gfx/imagemagick"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
