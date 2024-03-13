#!/bin/bash

# 停止 babylond 服务
sudo systemctl stop babylond

# 禁用 babylon 和 babylond 服务
sudo systemctl disable babylon
sudo systemctl disable babylond

# 删除服务文件
sudo rm /etc/systemd/system/babylon.service
sudo rm /etc/systemd/system/babylond.service

# 重新加载 systemd 守护进程
sudo systemctl daemon-reload

# 删除 babylond 相关的目录和文件
rm -rf $HOME/.babylond
rm -rf babylon
sudo rm -rf $(which babylond)
