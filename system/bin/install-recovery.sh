#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:13208448:e057fb4838fd9e999789272ace5e5745a230a038; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10617728:41fe55c51065a05c62d86a6083d54c61c9a2fb99 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery e057fb4838fd9e999789272ace5e5745a230a038 13208448 41fe55c51065a05c62d86a6083d54c61c9a2fb99:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
