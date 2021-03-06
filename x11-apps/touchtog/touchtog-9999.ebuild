# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Toggle Touchpad On and Off"
HOMEPAGE="https://github.com/amarakon/touchtog"
EGIT_REPO_URI="https://github.com/amarakon/touchtog"

LICENSE="AGPL-3"
SLOT="0"
IUSE="minimal"

RDEPEND="
	x11-apps/xinput
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
