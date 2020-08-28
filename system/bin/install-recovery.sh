#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:13206400:dce91a9483ec530c54dffe338a438bc6864faf93; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10615680:a39355029b411e022a19d2584bdee0e267c6322c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery dce91a9483ec530c54dffe338a438bc6864faf93 13206400 a39355029b411e022a19d2584bdee0e267c6322c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
