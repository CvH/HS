# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="wpa_supplicant"
PKG_VERSION="2.7"
PKG_SITE="https://w1.fi/wpa_supplicant/"
PKG_WATCH="https://w1.fi/releases/ wpa_supplicant-([\d\.]*)\.tar\.gz"
PKG_URL="https://w1.fi/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libnl"

PKG_MAKE_OPTS_TARGET="-C wpa_supplicant V=1 LIBDIR=/usr/lib BINDIR=/usr/bin"

pre_configure_target() {
  export LDFLAGS="$LDFLAGS -static"
}

configure_target() {
  cp $PKG_DIR/config/makefile.config wpa_supplicant/.config
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR wpa_supplicant/wpa_supplicant $INSTALL/usr/bin
}
