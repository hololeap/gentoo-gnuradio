# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="RTSA-like spectrum visualization using OpenCL and OpenGL"
HOMEPAGE="https://github.com/osmocom/gr-fosphor"

EGIT_REPO_URI="https://github.com/osmocom/gr-fosphor"
KEYWORDS=""

RDEPEND="virtual/opencl virtual/opengl media-libs/glfw"
GNURADIO_USE_DEPS=( qt4 )

inherit gnuradio git-r3
