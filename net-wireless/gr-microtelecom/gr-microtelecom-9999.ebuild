# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Perseus SDR source module"
HOMEPAGE="https://github.com/amontefusco/gr-microtelecom"

EGIT_REPO_URI="https://github.com/amontefusco/gr-microtelecom"
KEYWORDS=""

RDEPEND="net-libs/libperseus-sdr"

inherit gnuradio git-r3
