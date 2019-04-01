# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="FFmpeg and gnu radio integration"
HOMEPAGE="https://github.com/osh/gr-mediatools"

EGIT_REPO_URI="https://github.com/osh/gr-mediatools"
KEYWORDS=""

RDEPEND="virtual/ffmpeg"

inherit gnuradio git-r3
