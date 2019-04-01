# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Connect to flowgraphs over a network to perform remote procedure calls"
HOMEPAGE="https://github.com/iohannez/gr-zmqblocks"

EGIT_REPO_URI="https://github.com/iohannez/gr-zmqblocks"
KEYWORDS=""

RDEPEND="net-libs/zeromq"

inherit gnuradio git-r3
