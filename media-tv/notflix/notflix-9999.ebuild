EAPI=7

inherit git-r3

DESCRIPTION="Shell script to search and stream torrent with peerflix"
HOMEPAGE="https://github.com/Bugswriter/notflix"
EGIT_REPO_URI="https://github.com/Bugswriter/notflix"

LICENSE="GPL-3"
SLOT="0"

#src_compile() { :; }

src_install() {
	insinto "/usr/bin"
	doins notflix
}

pkg_postinst() {
	chmod 755 /usr/bin/notflix
}
