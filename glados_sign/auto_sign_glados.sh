#!/bin/bash

# $1为第一个参数，$0为文件名

#设置第一个参数为cookie
cookie="cf_clearance=uLKtWDIX8Qfgi.9CE0sLl60FT65IIfDU8Zl5bbZ2GCI-1660007870-0-150; koa:sess=eyJ1c2VySWQiOjEzMzU0MiwiX2V4cGlyZSI6MTY5NjU4MjY1Mjc2MiwiX21heEFnZSI6MjU5MjAwMDAwMDB9; koa:sess.sig=lnWAL4vC26RR3WPP1lBq6rHxXUw; _gid=GA1.2.1460297591.1677726462; _ga=GA1.2.189203472.1677399788; _gat_gtag_UA_104464600_2=1; _ga_CZFVKMNT9J=GS1.1.1677767944.3.1.1677767952.0.0.0"

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
