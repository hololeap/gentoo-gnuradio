# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="APRS for GNU Radio"
HOMEPAGE="https://github.com/balint256/gr-packetradio"

EGIT_REPO_URI="https://github.com/balint256/gr-packetradio"
KEYWORDS=""

RDEPEND="net-wireless/gr-compat"

inherit gnuradio git-r3
