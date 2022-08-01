# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Manage CPU settings through the command-line"
HOMEPAGE="https://github.com/amarakon/cpu-cli"
EGIT_REPO_URI="https://github.com/amarakon/cpu-cli"

LICENSE="AGPL-3"
SLOT="0"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
