# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="mobilegps"
PKG_VERSION="c01b7ff9ab"
PKG_SITE="https://github.com/g4klx/MobileGPS"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

PKG_CMAKE_OPTS_TARGET="
  -DGIT_VERSION=$PKG_VERSION
  -DCMAKE_VERBOSE_MAKEFILE=OFF
"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR MobileGPS $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/MobileGPS.ini $INSTALL/etc/config
}
