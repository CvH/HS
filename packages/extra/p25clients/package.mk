# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="p25clients"
PKG_VERSION="0ebb0bf502"
PKG_SITE="https://github.com/g4klx/P25Clients"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR P25Gateway $INSTALL/usr/bin
  cp -PR P25Parrot $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/P25Gateway/P25Gateway.ini $INSTALL/etc/config
}
