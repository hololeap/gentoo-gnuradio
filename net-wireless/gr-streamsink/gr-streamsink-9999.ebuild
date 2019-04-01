# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GNURadio sink to stream audio to SHOUTcast/Icecast"
HOMEPAGE="https://github.com/martinleolehner/gr-streamsink"

EGIT_REPO_URI="https://github.com/martinleolehner/gr-streamsink"
KEYWORDS=""

RDEPEND="media-sound/lame"

inherit gnuradio git-r3
