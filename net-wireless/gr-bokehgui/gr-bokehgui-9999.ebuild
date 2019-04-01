# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Web based display for GNU Radio"
HOMEPAGE="https://github.com/kartikp1995/gr-bokehgui"

EGIT_REPO_URI="https://github.com/kartikp1995/gr-bokehgui"
KEYWORDS=""

RDEPEND="dev-python/bokeh"

inherit gnuradio git-r3
