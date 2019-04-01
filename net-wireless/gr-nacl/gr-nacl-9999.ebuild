# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNU Radio module for data encryption using NaCl"
HOMEPAGE="https://github.com/stwunsch/gr-nacl"

EGIT_REPO_URI="https://github.com/stwunsch/gr-nacl"
KEYWORDS=""

RDEPEND="dev-libs/libsodium"

inherit gnuradio git-r3
