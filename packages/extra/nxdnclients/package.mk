# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="nxdnclients"
PKG_VERSION="14709c63de"
PKG_SITE="https://github.com/g4klx/NXDNClients"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR NXDNGateway $INSTALL/usr/bin
  cp -PR NXDNParrot $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/NXDNGateway/NXDNGateway.ini $INSTALL/etc/config

  mkdir -p $INSTALL/usr/share/NXDNGateway/Audio
  cp -PR $PKG_BUILD/NXDNGateway/Audio/en_* $INSTALL/usr/share/NXDNGateway/Audio
}
