EAPI=7

DESCRIPTION="POSIX script to record audio and/or display easily using FFmpeg"
HOMEPAGE="https://github.com/Amarakon55/ffrec"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${P}.tar.gz -> ${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

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
