# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="IIO AD9361 library for filter design and handling, multi-chip sync, etc."
HOMEPAGE="https://github.com/analogdevicesinc/libad9361-iio"

EGIT_REPO_URI="https://github.com/analogdevicesinc/libad9361-iio"
KEYWORDS=""

LICENSE="LGPL-2.1"
SLOT="0/${PV}"

RDEPEND="net-libs/libiio:="

DEPEND="${RDEPEND}"

inherit cmake-utils git-r3
