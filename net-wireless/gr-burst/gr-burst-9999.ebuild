# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Burst PSK Modem Building Blocks for GNU Radio"
HOMEPAGE="https://github.com/gr-vt/gr-burst"

EGIT_REPO_URI="https://github.com/gr-vt/gr-burst"
KEYWORDS=""

RDEPEND="net-wireless/gr-mapper net-wireless/gr-eventstream"

inherit gnuradio git-r3
