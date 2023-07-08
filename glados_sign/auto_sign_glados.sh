#!/bin/bash

# $1为第一个参数，$0为文件名

#设置第一个参数为cookie
cookie="_gid=GA1.2.39552139.1688738683; koa:sess=eyJ1c2VySWQiOjEzMzU0MiwiX2V4cGlyZSI6MTcxNDY1ODc1NTE1NSwiX21heEFnZSI6MjU5MjAwMDAwMDB9; koa:sess.sig=rKVhHieKMNI3UURYBHfvsVcRs4k; Cookie=enabled; Cookie.sig=lbtpENsrE0x6riM8PFTvoh9nepc; _gat_gtag_UA_104464600_2=1; _ga=GA1.1.1536041039.1688738683; _ga_CZFVKMNT9J=GS1.1.1688799249.3.1.1688799286.0.0.0"

url="https://glados.rocks/api/user/checkin"
RESULT=$(curl -H "cookie:${cookie}"\
 -H "authority: glados.rocks"\
 -H "path: /api/user/checkin"\
 -H "Content-Type: application/json"\
 -H "sec-ch-ua: \"Chromium\";v=\"104\", \" Not A;Brand\";v=\"99\", \"Google Chrome\";v=\"104\""\
 -H "sec-ch-ua-platform: \"macOS\""\
 -H "user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36"\
 -d "{\"token\": \"glados.network\"}"\
 -X POST $url)

#echo -e $RESULT >> ./auto_sign_glados_log.txt

#-e打开转义字符。-E关闭，默认关闭
#echo -e "\n--------------------------------\n" >> ./auto_sign_glados_log.txt

echo $RESULT
