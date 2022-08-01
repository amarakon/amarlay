# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 optfeature

DESCRIPTION="Nordic Cursor Theme For Plasma Desktop"
HOMEPAGE="https://www.nordtheme.com https://github.com/EliverLara/Nordic"
SRC_URI=""
EGIT_REPO_URI="https://github.com/EliverLara/Nordic"

LICENSE="GPL-3"
SLOT="0"

src_install() {
	insinto /usr/share/icons
	doins -r kde/cursors/Nordic-cursors/

	einstalldocs
}
