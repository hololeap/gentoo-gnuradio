# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="NMEA0183 GPS to message source"
HOMEPAGE="https://github.com/ckuethe/gr-nmea"

EGIT_REPO_URI="https://github.com/ckuethe/gr-nmea"
KEYWORDS=""

inherit gnuradio git-r3

src_install() {
	cmake-utils_src_install

	# Remove api.h which collides with gr-gps
	rm -v "${D}/usr/include/gps/api.h"
}
