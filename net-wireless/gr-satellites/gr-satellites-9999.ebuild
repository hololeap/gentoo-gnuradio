# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNU Radio decoders for several Amateur satellites"
HOMEPAGE="https://github.com/daniestevez/gr-satellites"

EGIT_REPO_URI="https://github.com/daniestevez/gr-satellites"
KEYWORDS=""

RDEPEND="net-libs/libfec:=
	dev-python/construct:="

inherit gnuradio git-r3
