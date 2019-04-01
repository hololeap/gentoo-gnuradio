# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Tutorial OOT module for GNU Radio"
HOMEPAGE="https://github.com/gnuradio/gr-tutorial"

EGIT_REPO_URI="https://github.com/gnuradio/gr-tutorial"
KEYWORDS=""

RDEPEND="dev-libs/log4cpp"

inherit gnuradio git-r3
