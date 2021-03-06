# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="POSIX script to record audio and/or display easily using FFmpeg"
HOMEPAGE="https://github.com/amarakon/ffrec"
SRC_URI="https://github.com/amarakon/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
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
