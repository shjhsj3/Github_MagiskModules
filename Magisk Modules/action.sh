#
# This file is from RC.
#
#If you need to make modifications, you need to know what you are doing
#
#1a5c8 1BAD40CG4B0FAC71B
#
BACKUP_HOSTS="/data/adb/github520/backups/hosts"
TARGET_HOSTS="/data/adb/github520/hosts"
DEPLOY_PATH="/data/adb/modules/GitHub520/system/etc/"
URL="https://raw.hellogithub.com/hosts"
FILEPATH="/data/adb/github520/hosts"
# 确保目录存在
mkdir -p "/data/adb/github520/TMP"
mkdir -p "$DEPLOY_PATH"
# 初始化
echo "正在初始化..."
rm -rf "/data/adb/github520/TMP"/*
rm -rf "$DEPLOY_PATH"/*
echo "初始化完成。"
echo "配置"
curl -o "$FILEPATH" "$URL"
if [ $? -ne 0 ]; then
    echo "curl_easy_perform() 失败: $?" >&2
    exit 1
else
    echo "文件已成功下载到 $FILEPATH"
fi
# 将备份的hosts复制到TMP
if [ -f "$BACKUP_HOSTS" ]; then
    cp "$BACKUP_HOSTS" "/data/adb/github520/TMP"
    echo "复制成功。"
else
    echo "错误：$BACKUP_HOSTS 不存在。"
    exit 1
fi
# 读取hosts文件并追加
sleep 0.2
if [ -f "$TARGET_HOSTS" ]; then
    echo -e "\n" >> "/data/adb/github520/TMP/hosts"
    cat "$TARGET_HOSTS" >> "/data/adb/github520/TMP/hosts"
    echo "追加成功。"
else
    echo "错误：$TARGET_HOSTS 不存在。"
    exit 1
fi
# 将修改后的hosts移动到目标目录
sleep 0.3
if [ -d "$DEPLOY_PATH" ]; then
    mv "/data/adb/github520/TMP/hosts" "$DEPLOY_PATH"
    echo "移动成功。"
else
    echo "错误：$DEPLOY_PATH 不存在。"
    exit 1
fi
# 清理TMP目录
sleep 0.2
rm -rf "/data/adb/github520/TMP"/*
echo "所有操作均已完成，脚本执行成功。"
echo "*******************************"
echo "<操作完毕>"
echo "4秒后关闭"
echo "hosts已配置成功 尝试重启生效"
echo "*******************************"