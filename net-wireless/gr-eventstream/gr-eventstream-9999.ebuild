# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Translation between streams of data and scheduled-finite length events"
HOMEPAGE="https://github.com/osh/gr-eventstream"

EGIT_REPO_URI="https://github.com/osh/gr-eventstream"
KEYWORDS=""

RDEPEND="net-misc/curl"

inherit gnuradio git-r3
