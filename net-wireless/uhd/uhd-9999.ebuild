# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="The USRP Hardware Driver Repository"
HOMEPAGE="https://github.com/EttusResearch/uhd"

EGIT_REPO_URI="https://github.com/EttusResearch/uhd"
KEYWORDS=""

EGIT_BRANCH="rfnoc-devel"
EGIT_SUBMODULES=()

S="${WORKDIR}/${P}/host"

IUSE="gpsd"

RDEPEND="gpsd? ( sci-geosciences/gpsd:= )
	virtual/libusb:1=
	dev-lang/orc:=
	sys-libs/ncurses:0=[-tinfo]"

DEPEND="dev-python/mako
	dev-python/cheetah
	app-arch/unzip"

inherit gnuradio git-r3

src_configure() {
	local mycmakeargs=(
		-DENABLE_GPSD="$(usex gpsd)"
		-DENABLE_E100=yes
		-DENABLE_E300=yes
	)

	gnuradio_src_configure
}
