# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="dmrgateway"
PKG_VERSION="9579565ae0"
PKG_SITE="https://github.com/g4klx/DMRGateway"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

PKG_CMAKE_OPTS_TARGET="
  -DGIT_VERSION=$PKG_VERSION
  -DCMAKE_VERBOSE_MAKEFILE=OFF
"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR DMRGateway $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/DMRGateway.ini $INSTALL/etc/config

  mkdir -p $INSTALL/usr/share/DMRGateway/Audio
  cp -PR $PKG_BUILD/Audio/en_* $INSTALL/usr/share/DMRGateway/Audio
}
