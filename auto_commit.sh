#!/bin/bash

# 设置你要操作的文件名
FILENAME="demo-file.txt"

# 设置提交的次数
NUM_COMMITS=10

# 循环执行提交
for ((i=1; i<=NUM_COMMITS; i++))
do
    # 生成随机内容并添加到文件
    echo "Random change $RANDOM" >> $FILENAME
    
    # 添加更改到暂存区
    git add $FILENAME
    
    # 提交更改并生成提交消息
    git commit -m "Automated commit $i"
    
    # 推送更改到远程仓库
    git push origin main
    
    # 设置延迟时间（可选），避免提交过快
    sleep 1
done

echo "完成 $NUM_COMMITS 次自动提交"
