EAPI=7

DESCRIPTION="Patched Inconsolata font from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Inconsolata.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

src_install() {
	insinto /usr/share/fonts/nerd-fonts-inconsolata
	doins -r 'Inconsolata Bold Nerd Font Complete.otf' 'Inconsolata Regular Nerd Font Complete.otf'

	einstalldocs
}
