# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="mmdvmcal"
PKG_VERSION="8af8dae187"
PKG_SITE="https://github.com/g4klx/MMDVMCal"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR MMDVMCal $INSTALL/usr/bin
}
