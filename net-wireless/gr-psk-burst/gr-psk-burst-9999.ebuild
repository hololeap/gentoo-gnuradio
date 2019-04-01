# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNU Radio message based burst PSK Transmitter and Receiver"
HOMEPAGE="https://github.com/osh/gr-psk-burst"

EGIT_REPO_URI="https://github.com/osh/gr-psk-burst"
KEYWORDS=""

RDEPEND="net-wireless/gr-burst:=
	net-wireless/gr-mapper:=
	net-wireless/gr-eventstream:=
	net-wireless/gr-pyqt:="

inherit gnuradio git-r3
