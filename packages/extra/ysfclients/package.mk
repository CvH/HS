# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="ysfclients"
PKG_VERSION="9495bb203b"
PKG_SITE="https://github.com/g4klx/YSFClients"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR YSFGateway $INSTALL/usr/bin
  cp -PR YSFParrot $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/YSFGateway/YSFGateway.ini $INSTALL/etc/config
}
