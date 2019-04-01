# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="gnuradio I/Q balancing"
HOMEPAGE="https://git.osmocom.org/gr-iqbal/"

EGIT_REPO_URI="https://github.com/osmocom/gr-iqbal"
KEYWORDS=""

EGIT_SUBMODULES=()

RDEPEND="net-libs/libosmo-dsp:="

inherit gnuradio git-r3
