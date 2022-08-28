# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Use dmenu to View Man Pages as a PDFs"
HOMEPAGE="https://github.com/amarakon/dman"
EGIT_REPO_URI="https://github.com/amarakon/dman"

LICENSE="AGPL-3"
SLOT="0"

RDEPEND="x11-misc/dmenu"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
