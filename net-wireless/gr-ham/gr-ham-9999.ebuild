# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNU Radio blocks useful for amateur radio"
HOMEPAGE="https://github.com/argilo/gr-ham"

EGIT_REPO_URI="https://github.com/argilo/gr-ham"
KEYWORDS=""

RDEPEND="net-wireless/gr-compat"

inherit gnuradio git-r3
