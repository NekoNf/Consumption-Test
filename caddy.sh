#!/bin/bash

# 安装依赖
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https

# 添加Caddy GPG密钥
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg

# 添加Caddy的APT软件源
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list

# 更新APT索引
sudo apt update

# 安装Caddy
sudo apt install -y caddy

echo "Caddy 安装完成！"