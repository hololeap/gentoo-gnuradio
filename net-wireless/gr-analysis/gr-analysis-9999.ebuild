# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Analysis tools for high sample rate recordings"
HOMEPAGE="https://github.com/garverp/gr-analysis"

EGIT_REPO_URI="https://github.com/garverp/gr-analysis"
KEYWORDS=""

RDEPEND="net-wireless/uhd"

inherit gnuradio git-r3
