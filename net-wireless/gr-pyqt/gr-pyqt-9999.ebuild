# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="PyQt based plotters intended for plotting bursted events in gnuradio"
HOMEPAGE="https://github.com/osh/gr-pyqt"

EGIT_REPO_URI="https://github.com/osh/gr-pyqt"
KEYWORDS=""

RDEPEND="dev-python/matplotlib dev-lang/python:2.7[tk]"

inherit gnuradio git-r3
