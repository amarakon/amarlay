# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Dmenu prompt to select an emoji to copy to the clipboard"
HOMEPAGE="https://github.com/amarakon/dmoji"
EGIT_REPO_URI="https://github.com/amarakon/dmoji"

LICENSE="AGPL-3"
SLOT="0"

RDEPEND="
	x11-misc/dmenu
	x11-misc/xclip
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
