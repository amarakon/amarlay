EAPI=7

inherit git-r3

DESCRIPTION="Easily control PulseAudio volume from the command-line"
HOMEPAGE="https://github.com/Amarakon55/pavol-cli"
EGIT_REPO_URI="https://github.com/Amarakon55/pavol-cli"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="media-sound/pulseaudio"

src_compile() { :; }

src_install() {
	local emakeargs=(
		DESTDIR="${D}"
		PREFIX="${EPREFIX}"/usr
	)

	emake "${emakeargs[@]}" install
}
