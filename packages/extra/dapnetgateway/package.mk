# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="dapnetgateway"
PKG_VERSION="8b2cfb04ef"
PKG_SITE="https://github.com/g4klx/DAPNETGateway"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

PKG_CMAKE_OPTS_TARGET="
  -DCMAKE_VERBOSE_MAKEFILE=OFF
"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR DAPNETGateway $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/DAPNETGateway.ini $INSTALL/etc/config
}
