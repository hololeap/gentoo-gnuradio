# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="IEEE 802.11 a/g/p Transceiver"
HOMEPAGE="https://github.com/bastibl/gr-ieee802-11"

EGIT_REPO_URI="https://github.com/bastibl/gr-ieee802-11"
KEYWORDS=""

RDEPEND="net-wireless/uhd sci-libs/itpp dev-libs/log4cpp net-wireless/gr-foo"

inherit gnuradio git-r3
