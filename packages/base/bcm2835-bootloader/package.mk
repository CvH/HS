# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="bcm2835-bootloader"
PKG_VERSION="81cca1a938"
PKG_SITE="https://github.com/raspberrypi/firmware"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"

make_target() {
  :
}

makeinstall_target() {
  mkdir -p $PKG_BUILD/.boot
  cp -PR boot/fixup_cd.dat $PKG_BUILD/.boot/fixup.dat
  cp -PR boot/start_cd.elf $PKG_BUILD/.boot/start.elf
  cp -PR boot/bootcode.bin $PKG_BUILD/.boot/

  cp -PR $PKG_DIR/config/config.txt $PKG_BUILD/.boot
  cp -PR $PKG_DIR/config/cmdline.txt $PKG_BUILD/.boot
}
