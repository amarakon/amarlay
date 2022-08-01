# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 optfeature

DESCRIPTION="Patched Inconsolata font from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
#SRC_URI=""
EGIT_REPO_URI="https://github.com/ryanoasis/nerd-fonts"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

#S="${WORKDIR}"

src_install() {
	insinto /usr/share/fonts/nerd-fonts-inconsolata
	doins -r 'patched-fonts/Inconsolata/complete/Inconsolata Bold Nerd Font Complete.otf' 'patched-fonts/Inconsolata/complete/Inconsolata Regular Nerd Font Complete.otf'
	#doins -r patched-fonts/Inconsolata/complete/

	einstalldocs
}
