# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils git-r3

DESCRIPTION="vector optimized library of kernels"
HOMEPAGE="http://libvolk.org"
EGIT_REPO_URI="https://github.com/gnuradio/volk.git"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="+orc"

RDEPEND="dev-libs/boost"
DEPEND="${RDEPEND}
	dev-python/mako
	dev-python/six
"

CMAKE_BUILD_TYPE=Release

src_configure() {
	local mycmakeargs=(
		-DORC=$(usex orc)
	)
	cmake-utils_src_configure
}
