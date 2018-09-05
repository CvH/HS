# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="ysfclients"
PKG_VERSION="b59c5a8b4c"
PKG_SITE="https://github.com/g4klx/YSFClients"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR YSFGateway $INSTALL/usr/bin
  cp -PR YSFParrot $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/YSFGateway/YSFGateway.ini $INSTALL/etc/config
}
