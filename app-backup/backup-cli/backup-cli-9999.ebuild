EAPI=7

inherit git-r3

DESCRIPTION="Create easy system backups from the command line"
HOMEPAGE="https://github.com/amarakon/backup-cli"
EGIT_REPO_URI="https://github.com/amarakon/backup-cli"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	app-arch/tar
	app-arch/lz4
"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
