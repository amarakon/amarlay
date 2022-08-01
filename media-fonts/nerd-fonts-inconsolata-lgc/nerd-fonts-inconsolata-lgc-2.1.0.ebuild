# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Patched Inconsolata LGC font from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/InconsolataLGC.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

src_install() {
	insinto /usr/share/fonts/nerd-fonts-inconsolata-lgc
	doins -r 'Inconsolata LGC Italic Nerd Font Complete.ttf' 'Inconsolata LGC Bold Nerd Font Complete.ttf' 'Inconsolata LGC Nerd Font Complete.ttf'

	einstalldocs
}
