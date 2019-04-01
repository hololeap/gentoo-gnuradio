# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNU Radio source block for OsmoSDR and rtlsdr and hackrf"
HOMEPAGE="http://sdr.osmocom.org/trac/wiki/GrOsmoSDR"

EGIT_REPO_URI="https://github.com/osmocom/gr-osmosdr"
KEYWORDS=""

IUSE="bladerf fcd hackrf iqbalance mirisdr python rtlsdr uhd"

RDEPEND="bladerf? ( net-wireless/bladerf:= )
	hackrf? ( net-libs/libhackrf:= )
	iqbalance? ( net-wireless/gr-iqbal:= )
	mirisdr? ( net-libs/libmirisdr:= )
	rtlsdr? ( >=net-wireless/rtl-sdr-0.5.3:= )
	uhd? ( net-wireless/uhd:= )"
DEPEND="dev-python/cheetah:="

inherit gnuradio git-r3

src_configure() {
	local mycmakeargs=(
#		-DENABLE_DEFAULT=OFF
#		-DPYTHON_EXECUTABLE="${PYTHON}"
#		-DENABLE_FILE=ON
		-DENABLE_BLADERF="$(usex bladerf)"
		-DENABLE_HACKRF="$(usex hackrf)"
		-DENABLE_IQBALANCE="$(usex hackrf)"
		-DENABLE_MIRI="$(usex mirisdr)"
		-DENABLE_RTL="$(usex rtlsdr)"
		-DENABLE_RTL_TCP="$(usex rtlsdr)"
		-DENABLE_UHD="$(usex uhd)"

#		$(cmake-utils_use_enable fcd)
#		$(cmake-utils_use_enable hackrf)
#		$(cmake-utils_use_enable iqbalance)
#		$(cmake-utils_use_enable mirisdr MIRI)
#		$(cmake-utils_use_enable python)
#		$(cmake-utils_use_enable rtlsdr RTL)
#		$(cmake-utils_use_enable rtlsdr RTL_TCP)
#		$(cmake-utils_use_enable uhd)
	)

	gnuradio_src_configure
}
