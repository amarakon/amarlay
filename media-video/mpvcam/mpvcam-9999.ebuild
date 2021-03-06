# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="One line POSIX script to play your webcam in mpv with no latency"
HOMEPAGE="https://github.com/amarakon/mpvcam"
EGIT_REPO_URI="https://github.com/amarakon/mpvcam"

LICENSE="AGPL-3"
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
