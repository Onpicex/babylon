#!/bin/bash

# 输出停止 babylond 服务的信息
echo "正在停止 babylond 服务..."
sudo systemctl stop babylond

# 输出禁用服务的信息
echo "正在禁用 babylon 和 babylond 服务..."
sudo systemctl disable babylon
sudo systemctl disable babylond

# 输出删除服务文件的信息
echo "正在删除服务文件..."
sudo rm /etc/systemd/system/babylon.service
sudo rm /etc/systemd/system/babylond.service

# 输出重载 systemd 守护进程的信息
echo "正在重载 systemd 守护进程..."
sudo systemctl daemon-reload

# 输出删除相关文件和目录的信息
echo "正在删除 babylond 相关的目录和文件..."
rm -rf $HOME/.babylond
rm -rf babylon
sudo rm -rf $(which babylond)

# 添加一个完成的信息输出
echo "babylond 服务卸载完成。"
