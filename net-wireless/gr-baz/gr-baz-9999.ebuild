# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Collection of new blocks for GNU Radio http://wiki.spench.net/wiki/gr-baz"
HOMEPAGE="https://github.com/balint256/gr-baz"

EGIT_REPO_URI="https://github.com/balint256/gr-baz"
KEYWORDS=""

RDEPEND="net-wireless/uhd net-misc/curl sci-libs/armadillo net-wireless/gr-compat"

inherit gnuradio git-r3
