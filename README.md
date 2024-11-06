 auto_commit.sh：

bash
复制代码
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
使用步骤
把上述代码保存为 auto_commit.sh。

确保脚本具有执行权限。在终端中输入以下命令：

bash
复制代码
chmod +x auto_commit.sh
运行脚本：

bash
复制代码
./auto_commit.sh
说明
NUM_COMMITS：设置自动提交的次数，调整这个变量可以控制总提交次数。
sleep 1：设置每次提交的间隔，避免提交过快导致的网络问题。可以根据需要调整或删除这行。
运行该脚本后，文件 demo-file.txt 将被多次修改和提交。每次提交都会生成一个随机的提交消息并推送到 GitHub。
