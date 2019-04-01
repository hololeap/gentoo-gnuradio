# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Spectral estimation routines for GNU Radio"
HOMEPAGE="https://github.com/kit-cel/gr-specest"

EGIT_REPO_URI="https://github.com/kit-cel/gr-specest"
KEYWORDS=""

RDEPEND="sys-devel/gcc[fortran] virtual/lapack virtual/blas"

inherit gnuradio git-r3
