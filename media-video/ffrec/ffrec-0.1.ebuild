EAPI=7

inherit savedconfig

DESCRIPTION="POSIX script to record audio and/or display easily using FFmpeg"
HOMEPAGE="https://github.com/Amarakon55/ffrec"
SRC_URI="https://github.com/Amarakon55/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	media-video/ffmpeg
	x11-apps/xrandr
"

src_prepare() {
	default
	restore_config ffrec
}

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
	save_config ffrec
}
