# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="QT based PNG display sink for gnuradio"
HOMEPAGE="https://github.com/dl1ksv/gr-display"

KEYWORDS=""

EGIT_REPO_URI="https://github.com/dl1ksv/gr-display"
GNURADIO_USE_DEPS=( qt4 )

inherit gnuradio git-r3
