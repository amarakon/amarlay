# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="POSIX script to record audio and/or display easily using FFmpeg"
HOMEPAGE="https://github.com/amarakon/ffrec"
EGIT_REPO_URI="https://github.com/amarakon/ffrec"

LICENSE="AGPL-3"
SLOT="0"

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
