EAPI=7

inherit git-r3 optfeature

DESCRIPTION="Patched Inconsolata LGC font from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
EGIT_REPO_URI="https://github.com/ryanoasis/nerd-fonts"

LICENSE="MIT"
SLOT="0"

src_install() {
	insinto /usr/share/fonts/nerd-fonts-inconsolata-lgc
	doins -r 'patched-fonts/InconsolataLGC/complete/Inconsolata LGC Italic Nerd Font Complete.ttf' 'patched-fonts/InconsolataLGC/complete/Inconsolata LGC Bold Nerd Font Complete.ttf' 'patched-fonts/InconsolataLGC/complete/Inconsolata LGC Regular Nerd Font Complete.ttf'

	einstalldocs
}
