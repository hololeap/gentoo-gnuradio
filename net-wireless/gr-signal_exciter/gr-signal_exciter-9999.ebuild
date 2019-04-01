# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Tools for efficient generation of wideband populated spectrum"
HOMEPAGE="https://github.com/gr-vt/gr-signal_exciter"

EGIT_REPO_URI="https://github.com/gr-vt/gr-signal_exciter"
KEYWORDS=""

RDEPEND="dev-libs/jsoncpp:="

inherit gnuradio git-r3
