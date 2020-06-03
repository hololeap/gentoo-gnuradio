# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} )

CMAKE_BUILD_TYPE="None"
CMAKE_MAKEFILE_GENERATOR="emake"
inherit cmake-utils eutils gnome2-utils python-single-r1 xdg-utils desktop

DESCRIPTION="Toolkit that provides signal processing blocks to implement software radios"
HOMEPAGE="https://www.gnuradio.org/"
LICENSE="GPL-3"
SLOT="0/${PV}"

EGIT_REPO_URI="https://www.gnuradio.org/cgit/gnuradio.git"
inherit git-r3
KEYWORDS=""

IUSE="+audio +alsa +analog blocktool channels control-port +digital doc dtv examples fec +filter grc jack modtool +network oss performance-counters portaudio +qt5 sdl test trellis uhd +utils vocoder wavelet zeromq"
#RESTRICT="!test? ( test )"

REQUIRED_USE="${PYTHON_REQUIRED_USE}
		audio? ( || ( alsa oss jack portaudio ) )
		alsa? ( audio )
		oss? ( audio )
		jack? ( audio )
		portaudio? ( audio )
		analog? ( filter )
		digital? ( filter analog )
		dtv? ( fec )
		qt5? ( filter )
		uhd? ( filter analog )
		wavelet? ( analog )
		blocktool? ( utils )
		modtool? ( utils )
		vocoder? ( analog filter )"

# bug #348206
# comedi? ( >=sci-electronics/comedilib-0.8 )
# boost-1.52.0 is blacklisted, bug #461578, upstream #513, boost #7669
# log? ( dev-libs/log4cpp )
# dev-python/thrift <- needs binary installed
RDEPEND="${PYTHON_DEPS}
	>=dev-lang/orc-0.4.12
	sci-libs/fftw:3.0=
	sci-libs/volk:=
	>=sci-libs/mpir-3:=
	dev-libs/gmp:=
	alsa? (
		media-libs/alsa-lib:=
	)
	jack? (
		media-sound/jack-audio-connection-kit
	)
	portaudio? (
		>=media-libs/portaudio-19_pre
	)
	sdl? ( >=media-libs/libsdl-1.2.0 )
	uhd? ( >=net-wireless/uhd-3.9.6:=[${PYTHON_SINGLE_USEDEP}]
		dev-libs/log4cpp )
	vocoder? ( media-sound/gsm
		>=media-libs/codec2-0.8.1 )
	wavelet? (
		>=sci-libs/gsl-1.10
	)
	zeromq? (
		>=net-libs/zeromq-2.1.11
		net-libs/cppzmq:=
	)
	$(python_gen_cond_dep '
		dev-libs/boost:0=[${PYTHON_MULTI_USEDEP}]
		|| (
			dev-python/numpy-python2[${PYTHON_MULTI_USEDEP}]
			dev-python/numpy[${PYTHON_MULTI_USEDEP}]
		)
		dev-python/six[${PYTHON_MULTI_USEDEP}]
		filter? (
			|| (
				sci-libs/scipy-python2[${PYTHON_MULTI_USEDEP}]
				sci-libs/scipy[${PYTHON_MULTI_USEDEP}]
			)
		)
		grc? (
			dev-python/pygobject:*[cairo(+),${PYTHON_MULTI_USEDEP}]
			dev-python/pyyaml[${PYTHON_MULTI_USEDEP}]
			dev-python/mako[${PYTHON_MULTI_USEDEP}]
		)
		modtool? (
			dev-python/click[${PYTHON_MULTI_USEDEP}]
			dev-python/click-plugins[${PYTHON_MULTI_USEDEP}]
		)
		qt5? (
			dev-python/PyQt5[opengl,${PYTHON_MULTI_USEDEP}]
			dev-qt/qtcore:5
			dev-qt/qtgui:5
			dev-qt/qtwidgets:5
			x11-libs/qwt:6[qt5(+)]
		)
		uhd? (
			dev-python/click[${PYTHON_MULTI_USEDEP}]
			dev-python/click-plugins[${PYTHON_MULTI_USEDEP}]
		)
		utils? (
			|| (
				dev-python/matplotlib-python2[${PYTHON_MULTI_USEDEP}]
				dev-python/matplotlib[${PYTHON_MULTI_USEDEP}]
			)
		)
		zeromq? (
			dev-python/pyzmq[${PYTHON_MULTI_USEDEP}]
		)
	')
	"

DEPEND="${RDEPEND}
	app-text/docbook-xml-dtd:4.2
	>=dev-lang/swig-3.0.5
	virtual/pkgconfig
	doc? (
		>=app-doc/doxygen-1.5.7.1
		dev-texlive/texlive-latex:=
		app-text/dvipsk:=
		$(python_gen_cond_dep '
			dev-python/sphinx[${PYTHON_MULTI_USEDEP}]
		')
	)
	grc? ( x11-misc/xdg-utils )
	oss? ( virtual/os-headers )
	test? ( >=dev-util/cppunit-1.9.14 )
"

src_prepare() {
	gnome2_environment_reset #534582

	use !alsa && sed -i 's#version.h#version-nonexistant.h#' cmake/Modules/FindALSA.cmake
	use !jack && sed -i 's#jack.h#jack-nonexistant.h#' cmake/Modules/FindJACK.cmake
	use !oss && sed -i 's#soundcard.h#soundcard-nonexistant.h#' cmake/Modules/FindOSS.cmake
	use !portaudio && sed -i 's#portaudio.h#portaudio-nonexistant.h#' cmake/Modules/FindPORTAUDIO.cmake

	sed -i 's/Qt5Qwt6/Qt5Qwt/' cmake/Modules/FindQwt.cmake

	cmake-utils_src_prepare
}

src_configure() {
	python_export PYTHON_SITEDIR
	mycmakeargs=(
		-DENABLE_DEFAULT=OFF
		-DENABLE_GNURADIO_RUNTIME=ON
		-DENABLE_PYTHON=ON
		-DENABLE_DOXYGEN="$(usex doc)"
		-DENABLE_GRC="$(usex grc)"
		-DENABLE_PERFORMANCE_COUNTERS="$(usex performance-counters)"
		-DENABLE_TESTING="$(usex test)"
		-DENABLE_GR_ANALOG="$(usex analog)"
		-DENABLE_GR_AUDIO="$(usex audio)"
		-DENABLE_GR_BLOCKS=ON
		-DENABLE_GR_BLOCKTOOL="$(usex blocktool)"
		-DENABLE_GR_CHANNELS="$(usex channels)"
		-DENABLE_GR_CTRLPORT="$(usex control-port)"
		-DENABLE_GR_DIGITAL="$(usex digital)"
		-DENABLE_GR_DTV="$(usex dtv)"
		-DENABLE_GR_FEC="$(usex fec)"
		-DENABLE_GR_FFT=ON
		-DENABLE_GR_FILTER="$(usex filter)"
		-DENABLE_GR_MODTOOL="$(usex modtool)"
		-DENABLE_GR_NETWORK="$(usex network)"
		-DENABLE_GR_QTGUI="$(usex qt5)"
		-DENABLE_GR_TRELLIS="$(usex trellis)"
		-DENABLE_GR_UHD="$(usex uhd)"
		-DENABLE_GR_UTILS="$(usex utils)"
		-DENABLE_GR_WAVELET="$(usex wavelet)"
		-DENABLE_GR_VIDEO_SDL="$(usex sdl)"
		-DENABLE_GR_VOCODER="$(usex vocoder)"
		-DENABLE_GR_ZEROMQ="$(usex zeromq)"
		-DENABLE_POSTINSTALL="$(usex grc)"
		-DSYSCONFDIR="${EPREFIX}"/etc
		-DPYTHON_EXECUTABLE="${PYTHON}"
		-DGR_PYTHON_DIR="${PYTHON_SITEDIR}"
		-DGR_PKG_DOC_DIR="${EPREFIX}/usr/share/doc/${PF}"
	)
	cmake-utils_src_configure
}

src_test() {
	# The qt tests seem to require connecting to an active X11 display
	myctestargs+=( -E qa_qtgui )
	cmake-utils_src_test
}

src_install() {
	cmake-utils_src_install

	if use examples ; then
		dodir /usr/share/doc/${PF}/
		mv "${ED}"/usr/share/${PN}/examples "${ED}"/usr/share/doc/${PF}/ || die
		docompress -x /usr/share/doc/${PF}/examples
	else
	# It seems that the examples are always installed
		rm -rf "${ED}"/usr/share/${PN}/examples || die
	fi

	if use doc || use examples; then
		#this doesn't appear useful
		rm -rf "${ED}"/usr/share/doc/${PF}/xml || die
	fi

	# We install the mimetypes to the correct locations from the ebuild
	rm -rf "${ED}"/usr/share/${PN}/grc/freedesktop || die
	rm -f "${ED}"/usr/libexec/${PN}/grc_setup_freedesktop || die

	# Install icons, menu items and mime-types for GRC
	if use grc ; then
		local fd_path="${S}/grc/scripts/freedesktop"
		insinto /usr/share/mime/packages
		doins "${fd_path}/${PN}-grc.xml"

		domenu "${fd_path}/"*.desktop
		doicon "${fd_path}/"*.png
	fi

	python_fix_shebang "${ED}"
}

pkg_postinst()
{
	local GRC_ICON_SIZES="32 48 64 128 256"

	if use grc ; then
		xdg_desktop_database_update
		xdg_mimeinfo_database_update
		for size in ${GRC_ICON_SIZES} ; do
			xdg-icon-resource install --noupdate --context mimetypes --size ${size} \
				"${EROOT}/usr/share/pixmaps/grc-icon-${size}.png" application-gnuradio-grc \
				|| die "icon resource installation failed"
			xdg-icon-resource install --noupdate --context apps --size ${size} \
				"${EROOT}/usr/share/pixmaps/grc-icon-${size}.png" gnuradio-grc \
				|| die "icon resource installation failed"
		done
		xdg-icon-resource forceupdate
	fi
}

pkg_postrm()
{
	local GRC_ICON_SIZES="32 48 64 128 256"

	if use grc ; then
		xdg_desktop_database_update
		xdg_mimeinfo_database_update
		for size in ${GRC_ICON_SIZES} ; do
			xdg-icon-resource uninstall --noupdate --context mimetypes --size ${size} \
				application-gnuradio-grc || ewarn "icon uninstall failed"
			xdg-icon-resource uninstall --noupdate --context apps --size ${size} \
				gnuradio-grc || ewarn "icon uninstall failed"

		done
		xdg-icon-resource forceupdate
	fi
}
