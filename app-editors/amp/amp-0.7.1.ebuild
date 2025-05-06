# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A complete text editor for your terminal"
HOMEPAGE="https://github.com/jmacdonald/amp"
SRC_URI="https://github.com/jmacdonald/amp/tarball/dae913c95d72fd6f8c1b557e7a8c4a0ffb3b057e -> amp-0.7.1-dae913c.tar.gz
https://distfiles.macaronios.org/3d/3f/9a/3d3f9a4b5b63d43d2431ccd3f7d4e8bfb622595fabdc1b40b5a17e75598a58da812f298ee2abe1148c29e227a37050844e7b3f759469e47c6b109a9ee484dcb1 -> amp-0.7.1-funtoo-crates-bundle-27000f15d6b6d67800d3fa2c89e1abc6b4bc3c171b6352862ea830001938523ba7b57ede126e781a8c757eb629649bdce9f7b43d833c379339ca42eb89ed571f.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"
IUSE="X"

BDEPEND="
	virtual/rust
	dev-util/cmake
"

RDEPEND="
	dev-vcs/git
	X? ( x11-libs/libxcb )
	dev-libs/openssl
	sys-libs/zlib
"

post_src_unpack() {
	mv ${WORKDIR}/jmacdonald-amp-*/* ${S} || die
}

src_install() {
	cargo_src_install
	dodoc README.md
}