# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNURadio funcube dongle pro+ source"
HOMEPAGE="https://github.com/dl1ksv/gr-fcdproplus"

EGIT_REPO_URI="https://github.com/dl1ksv/gr-fcdproplus"
KEYWORDS=""

RDEPEND="virtual/libusb dev-libs/hidapi"

inherit gnuradio git-r3
