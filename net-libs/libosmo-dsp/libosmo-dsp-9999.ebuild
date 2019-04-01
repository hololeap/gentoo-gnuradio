# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Osmocom DSP utility functions"
HOMEPAGE="https://github.com/osmocom/libosmo-dsp"

EGIT_REPO_URI="https://github.com/osmocom/libosmo-dsp"
KEYWORDS=""

LICENSE="GPL-2"
SLOT="0/${PV}"

IUSE="doc"

DEPEND="doc? ( app-doc/doxygen:= )"

inherit git-r3
