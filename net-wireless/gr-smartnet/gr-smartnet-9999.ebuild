# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Motorola Smartnet II trunking logging scanner for Gnuradio"
HOMEPAGE="https://github.com/bistromath/gr-smartnet"

EGIT_REPO_URI="https://github.com/bistromath/gr-smartnet"
KEYWORDS=""

RDEPEND="net-wireless/gr-compat"

inherit gnuradio git-r3
