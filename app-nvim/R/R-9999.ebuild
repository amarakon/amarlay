# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit nvim-plugin git-r3

DESCRIPTION="Vim plugin to work with R"
HOMEPAGE="https://github.com/jalvesaq/Nvim-R"
EGIT_REPO_URI="https://github.com/jalvesaq/Nvim-R"

#S=${WORKDIR}/${MY_P}

SLOT="0"
LICENSE="GPL-2"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )
