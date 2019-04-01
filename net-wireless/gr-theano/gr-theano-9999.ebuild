# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Rapid GPU Accelerated Blocks for GNU Radio"
HOMEPAGE="https://github.com/osh/gr-theano"

EGIT_REPO_URI="https://github.com/osh/gr-theano"
KEYWORDS=""

inherit gnuradio git-r3

src_install() {
	cmake-utils_src_install

	# Rename grc block files which are highly likely to collide with
	# files from other packages
	local dir="${D}/usr/share/gnuradio/grc/blocks/"
	ls "$dir" | while read file; do
		mv -v "${dir}/${file}" "${dir}/theano_${file}"
	done
}
