# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Meta package for XEmacs elisp packages, similar to the sumo archives"
HOMEPAGE="http://www.xemacs.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE="mule"

RDEPEND="
	>=app-xemacs/ada-1.16
	>=app-xemacs/apel-1.36
	>=app-xemacs/auctex-1.58
	>=app-xemacs/bbdb-1.34
	>=app-xemacs/build-1.18
	>=app-xemacs/c-support-1.24
	>=app-xemacs/calc-1.28
	>=app-xemacs/calendar-1.42
	>=app-xemacs/cc-mode-1.99
	>=app-xemacs/cedet-common-1.03
	>=app-xemacs/clearcase-1.12
	>=app-xemacs/cogre-1.04
	>=app-xemacs/cookie-1.17
	>=app-xemacs/crisp-1.17
	>=app-xemacs/debug-1.20
	>=app-xemacs/dictionary-1.18
	>=app-xemacs/dired-1.22
	>=app-xemacs/docbookide-0.10
	>=app-xemacs/easypg-1.05
	>=app-xemacs/ecb-1.25
	>=app-xemacs/ecrypto-0.23
	>=app-xemacs/ede-1.07
	>=app-xemacs/edebug-1.24
	>=app-xemacs/ediff-1.84
	>=app-xemacs/edit-utils-2.58
	>=app-xemacs/edt-1.16
	>=app-xemacs/efs-1.37
	>=app-xemacs/eieio-1.10
	>=app-xemacs/elib-1.15
	>=app-xemacs/emerge-1.13
	>=app-xemacs/erc-0.26
	>=app-xemacs/escreen-1.03
	>=app-xemacs/eshell-1.21
	>=app-xemacs/eudc-1.43
	>=app-xemacs/footnote-1.18
	>=app-xemacs/forms-1.17
	>=app-xemacs/fortran-modes-1.07
	>=app-xemacs/frame-icon-1.13
	>=app-xemacs/fsf-compat-1.24
	>=app-xemacs/games-1.23
	>=app-xemacs/general-docs-1.10
	>=app-xemacs/gnats-1.19
	>=app-xemacs/gnus-2.04
	>=app-xemacs/haskell-mode-1.14
	>=app-xemacs/hm-html-menus-1.26
	>=app-xemacs/hyperbole-1.22
	>=app-xemacs/ibuffer-1.12
	>=app-xemacs/idlwave-1.34
	>=app-xemacs/igrep-1.18
	>=app-xemacs/ilisp-1.38
	>=app-xemacs/jde-1.54
	>=app-xemacs/mail-lib-1.84
	>=app-xemacs/mailcrypt-2.16
	>=app-xemacs/mew-1.22
	>=app-xemacs/mh-e-1.35
	>=app-xemacs/mine-1.18
	>=app-xemacs/misc-games-1.25
	>=app-xemacs/mmm-mode-1.08
	>=app-xemacs/net-utils-1.61
	>=app-xemacs/ocaml-0.10
	>=app-xemacs/oo-browser-1.07
	>=app-xemacs/os-utils-1.44
	>=app-xemacs/pc-1.30
	>=app-xemacs/pcl-cvs-1.73
	>=app-xemacs/pcomplete-1.08
	>=app-xemacs/perl-modes-1.16
	>=app-xemacs/pgg-1.10
	>=app-xemacs/prog-modes-2.33
	>=app-xemacs/ps-print-1.14
	>=app-xemacs/psgml-1.50
	>=app-xemacs/psgml-dtds-1.05
	>=app-xemacs/python-modes-1.16
	>=app-xemacs/re-builder-1.07
	>=app-xemacs/reftex-1.36
	>=app-xemacs/riece-1.26
	>=app-xemacs/rmail-1.16
	>=app-xemacs/ruby-modes-1.07
	>=app-xemacs/sasl-1.18
	>=app-xemacs/scheme-1.22
	>=app-xemacs/semantic-1.23
	>=app-xemacs/sgml-1.13
	>=app-xemacs/sh-script-1.26
	>=app-xemacs/sieve-1.20
	>=app-xemacs/slider-1.18
	>=app-xemacs/sml-mode-0.14
	>=app-xemacs/sounds-au-1.14
	>=app-xemacs/sounds-wav-1.14
	>=app-xemacs/speedbar-1.32
	>=app-xemacs/strokes-1.12
	>=app-xemacs/sun-1.19
	>=app-xemacs/supercite-1.23
	>=app-xemacs/texinfo-1.32
	>=app-xemacs/text-modes-2.06
	>=app-xemacs/textools-1.17
	>=app-xemacs/time-1.17
	>=app-xemacs/tm-1.42
	>=app-xemacs/tooltalk-1.17
	>=app-xemacs/tpu-1.16
	>=app-xemacs/tramp-1.57
	>=app-xemacs/vc-1.50
	>=app-xemacs/vc-cc-1.24
	>=app-xemacs/vhdl-1.24
	>=app-xemacs/view-process-1.15
	>=app-xemacs/viper-1.69
	>=app-xemacs/vm-8.11
	>=app-xemacs/w3-1.41
	>=app-xemacs/x-symbol-1.16
	>=app-xemacs/xemacs-base-2.46
	>=app-xemacs/xemacs-devel-1.84
	>=app-xemacs/xemacs-eterm-1.20
	>=app-xemacs/xemacs-ispell-1.37
	>=app-xemacs/xetla-1.04
	>=app-xemacs/xlib-1.16
	>=app-xemacs/xslide-1.11
	>=app-xemacs/xslt-process-1.14
	>=app-xemacs/xwem-1.26
	>=app-xemacs/zenirc-1.18

	mule? (
	>=app-xemacs/edict-1.19
	>=app-xemacs/egg-its-1.29
	>=app-xemacs/latin-euro-standards-1.11
	>=app-xemacs/latin-unity-1.23
	>=app-xemacs/leim-1.38
	>=app-xemacs/locale-1.30
	>=app-xemacs/lookup-1.17
	>=app-xemacs/mule-base-1.60
	>=app-xemacs/mule-ucs-1.21
	>=app-xemacs/skk-1.27
	)
"
