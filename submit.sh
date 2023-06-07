#!/bin/bash

# 检查参数数量
if [ $# -lt 1 ]; then
  echo "ERROR: [usage] *.sh + commit msg..."
  exit 1
fi

# 删除当前目录以及所有层级子目录下的 .out 文件
find . -type f -name "*.out" -delete

# 添加、提交和推送代码到GitHub仓库
git add .
git commit -m "$1"
git push origin main
git reflog
git status

