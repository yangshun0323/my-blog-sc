@echo off
echo 正在将所有文件添加到Git...
git add .

echo 正在提交更改...
git commit -m "自动提交：通过批处理脚本"

echo 正在推送到远程仓库...
git push origin main

echo 完成。