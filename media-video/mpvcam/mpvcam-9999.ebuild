EAPI=7

inherit git-r3

DESCRIPTION="One line POSIX script to play your webcam in mpv with no latency"
HOMEPAGE="https://github.com/Amarakon55/mpvcam"
EGIT_REPO_URI="https://github.com/Amarakon55/mpvcam"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="media-video/mpv"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
