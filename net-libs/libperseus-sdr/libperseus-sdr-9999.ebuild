# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Perseus Software Defined Radio Control Library for Linux"
HOMEPAGE="https://github.com/Microtelecom/libperseus-sdr"

EGIT_REPO_URI="https://github.com/Microtelecom/libperseus-sdr"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0/${PV}"

RDEPEND="virtual/libusb:1="
DEPEND="${RDEPEND}"

inherit git-r3
