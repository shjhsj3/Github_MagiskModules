#
# This file is from RC.
#
# If you need to make modifications, you need to know what you are doing
#
# The main function of this file is to grant the appropriate permissions to the files and configure some other permissions.
# Happy every day
#
# 1a5c8 1BAD40CG4B0FAC71B
#
MODDIR=${0%/*}
id=GitHub520
versionCode=101
author=klmahuaw/模块制作1a5c8
#为什么会有这个多此一举的函数 我只能说这里本来是做一些有趣功能的但是被砍了原因是我认为它不实用
print_module_info() {
    ui_print "*******************************"
    ui_print "模块ID: $id"
    ui_print "版本代码: $versionCode"
    ui_print "作者信息: $author"
    ui_print "*******************************"
}
create_directory_structure() {
    ui_print "Set permissions..."
    set_perm_recursive $MODPATH 0 0 0755 0755
    ui_print "*******************************"
    ui_print "正在配置信息稍等"
    ui_print "*******************************"
    ui_print "配置完成"
    mkdir -p "$MODPATH/TMP"
    mkdir -p "/data/adb/github520"
}
backup_hosts() {
    ui_print "正在备份 /system/etc/hosts 文件..."
    mkdir -p "/data/adb/github520/backups"
    cp -f "/system/etc/hosts" "/data/adb/github520/backups/hosts"
    ui_print "备份完成: /data/adb/github520/backups/hosts"
}
hostsjiaoc() {
    ui_print "模块安装完毕..."
    ui_print "*******************************"
    ui_print "使用教程：点击按钮自动作用hosts"
    ui_print "*******************************"
}
print_module_info
create_directory_structure
backup_hosts
