EAPI=7

inherit unpacker

DESCRIPTION="A powerful and productive IDE for the R programming language"
HOMEPAGE="https://www.rstudio.com/products/rstudio"
SRC_URI="https://builds.garudalinux.org/repos/chaotic-aur/x86_64/rstudio-desktop-${PV}+461-1-x86_64.pkg.tar.zst -> ${PN}.tar.zst"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64"
S="$WORKDIR/usr"

#RDEPEND="dev-libs/nspr"

src_install() {
	insinto /usr
	doins -r lib
	doins -r share
}

pkg_postinst() {
	chmod 755 * postback/*
	ln -sf /usr/lib/rstudio/bin/rstudio /usr/bin/rstudio-bin
}
