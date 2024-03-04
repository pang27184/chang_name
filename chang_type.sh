#!/bin/bash

# 设置文件扩展名
extension=".txt"

# 设置新文件扩展名
new_extension=".md"

# 遍历当前目录下的所有文件
for file in *${extension}
do
  # 转换文件格
pandoc -s "${file}" -o "${file/${extension}/${new_extension}}"
done

注意：需要先安装Pandoc。
