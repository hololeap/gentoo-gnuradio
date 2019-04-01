# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Bluetooth receiver implementation for GNU Radio"
HOMEPAGE="https://github.com/greatscottgadgets/gr-bluetooth"

EGIT_REPO_URI="https://github.com/greatscottgadgets/gr-bluetooth"
KEYWORDS=""

RDEPEND="net-wireless/gr-compat net-libs/libbtbb"

inherit gnuradio git-r3
