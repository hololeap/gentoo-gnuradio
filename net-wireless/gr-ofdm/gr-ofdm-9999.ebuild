# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A complete OFDM implementation including GUI for reasearch and teaching"
HOMEPAGE="https://github.com/rwth-ti/gr-ofdm"

EGIT_REPO_URI="https://github.com/rwth-ti/gr-ofdm"
KEYWORDS=""

RDEPEND="net-wireless/uhd net-libs/zeromq dev-python/numpy sci-libs/scipy dev-python/pyqwt:5 sci-libs/itpp"

inherit gnuradio git-r3
