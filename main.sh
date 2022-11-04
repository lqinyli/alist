#!/bin/bash
echo -e "--开始拉取代码--"
curl -O -L https://github.com/alist-org/alist/releases/download/v3.2.1/alist-linux-amd64.tar.gz
echo -e "--解压文件--"
tar -xzvf alist*.tar.gz
echo -e "--删除压缩包文件--"
rm -rf alist*.tar.gz
echo -e "--获取文件权限"
chmod +x alist
echo -e "--获取登录密码--"
./alist admin
echo -e "--上面的password后面的字符就是你的密码--"
echo -e "--开始运行项目--"
sleep 3
nohup ./alist server &
