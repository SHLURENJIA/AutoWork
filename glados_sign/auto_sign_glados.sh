#!/bin/bash

# $1为第一个参数，$0为文件名

#设置第一个参数为cookie
cookie=$1
user_agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36"
content_type="application/json;charset=UTF-8"
accept="application/json, text/plain, */*"
accept_encoding="gzip, deflate, br"

url="https://glados.rocks/api/user/checkin"

# >> 是追加写入
curl -i -o >> ./auto_sign_glados_log.txt -X POST -H "accept:${accept}" -H "accept_encoding:${accept_encoding}" -H "content_type:${content_type}" -H "user_agent:${user_agent}" -H "cookie:${cookie}" $url 

#-e打开转义字符。-E关闭，默认关闭
echo -e "\n--------------------------------\n" >> ./auto_sign_glados_log.txt