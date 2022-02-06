EAPI=7

inherit git-r3 optfeature

DESCRIPTION="Nord Theme For Plasma Desktop"
HOMEPAGE="https://www.nordtheme.com https://github.com/L4ki/Nord-Plasma-Themes"
SRC_URI=""
EGIT_REPO_URI="https://github.com/L4ki/Nord-Plasma-Themes"

LICENSE="GPL-3"
SLOT="0"

src_install() {
	insinto /usr/share/icons
	doins -r Breeze-Nord-Icons-Themes/Breeze-Nord-Dark-Icons/

	einstalldocs
}
