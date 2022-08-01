# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Manage files using Dmenu"
HOMEPAGE="https://github.com/amarakon/dfm"
EGIT_REPO_URI="https://github.com/amarakon/dfm"

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

pkg_postinst() {
	optfeature "clipboard support" x11-misc/xclip
}
