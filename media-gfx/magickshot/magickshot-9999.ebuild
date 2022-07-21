EAPI=7

inherit git-r3

DESCRIPTION="Minimal screenshot utility using ImageMagick, alternative to scrot"
HOMEPAGE="https://github.com/amarakon/magickshot"
EGIT_REPO_URI="https://github.com/amarakon/magickshot"

LICENSE="AGPL-3"
SLOT="0"

RDEPEND="media-gfx/imagemagick x11-misc/xdotool x11-apps/xrandr x11-apps/xwd x11-misc/printmon"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
