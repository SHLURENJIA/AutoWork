#!/bin/bash

# $1为第一个参数，$0为文件名

#设置第一个参数为cookie
cookie=$1
params=$2

url="https://glados.rocks/api/user/checkin"
RESULT=$(curl -H "cookie:${cookie}"\
 -H "Content-Type: application/json"\
 -d "${params}"\
 -X POST $url)

echo -e $RESULT >> ./auto_sign_glados_log.txt

#-e打开转义字符。-E关闭，默认关闭
echo -e "\n--------------------------------\n" >> ./auto_sign_glados_log.txt

echo $RESULT
