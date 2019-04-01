# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Multichannel POCSAG receiver for gnuradio"
HOMEPAGE="https://github.com/bafe/gr-pocsag"

EGIT_REPO_URI="https://github.com/bafe/gr-pocsag"
KEYWORDS=""

RDEPEND="net-wireless/gr-compat"

inherit gnuradio git-r3
