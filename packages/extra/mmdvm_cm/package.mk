# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="mmdvm_cm"
PKG_VERSION="72fef051a8"
PKG_SITE="https://github.com/juribeparada/MMDVM_CM"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  mkdir -p $INSTALL/etc/config

  for PK in DMR2NXDN DMR2YSF NXDN2DMR YSF2DMR YSF2NXDN YSF2P25 ; do
    cp -PR $PKG_BUILD/$PK/$PK.ini $INSTALL/etc/config
    cp -PR $PKG_BUILD/$PK/$PK $INSTALL/usr/bin
  done
}
