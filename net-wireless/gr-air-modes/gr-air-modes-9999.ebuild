# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNU Radio Mode-S/ADS-B decoder"
HOMEPAGE="https://github.com/bistromath/gr-air-modes"

EGIT_REPO_URI="https://github.com/bistromath/gr-air-modes"
KEYWORDS=""

RDEPEND="dev-python/pyzmq dev-python/PyQt4 net-wireless/gnuradio[qt4]"

inherit gnuradio git-r3
