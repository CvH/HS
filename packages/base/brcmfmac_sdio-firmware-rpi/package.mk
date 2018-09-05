# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="brcmfmac_sdio-firmware-rpi"
PKG_VERSION="cda3df85ec"
PKG_SITE="https://github.com/LibreELEC/brcmfmac_sdio-firmware-rpi"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

make_init() {
  :
}

makeinstall_init() {
  mkdir -p $INSTALL/lib/firmware/brcm
  cp -PR $PKG_BUILD/firmware/brcm/brcmfmac43430-sdio.* $INSTALL/lib/firmware/brcm
}
