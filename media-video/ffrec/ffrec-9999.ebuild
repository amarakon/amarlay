EAPI=8

inherit git-r3

DESCRIPTION="POSIX script to record audio and/or display easily using FFmpeg"
HOMEPAGE="https://github.com/Amarakon55/ffrec"
EGIT_REPO_URI="https://github.com/Amarakon55/ffrec"

LICENSE="GPL-2"
SLOT="0"
IUSE="minimal"

RDEPEND="
	media-video/ffmpeg
	x11-apps/xrandr
	"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
