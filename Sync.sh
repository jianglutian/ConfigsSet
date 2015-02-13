#!/bin/bash

# // TODO: 全部同步
cp -r bin ~/

# 更新vim脚本文件
cd vim
./release.sh
cd -
