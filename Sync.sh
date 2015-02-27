#!/bin/bash

# // TODO: 全部同步
cp -r bin ~/
cp ~/.bash_profile ~/bash_profile.bak
cp bash_profile ~/.bash_profile

# 更新vim脚本文件
cd vim
./release.sh
cd -
