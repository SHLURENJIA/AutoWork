#!/bin/bash

# $1为第一个参数，$0为文件名

#设置第一个参数为cookie
cookie="_ga=GA1.2.1399640006.1657632891; koa:sess=eyJ1c2VySWQiOjEzMzU0MiwiX2V4cGlyZSI6MTY4MzU1Mjk0NDM1MywiX21heEFnZSI6MjU5MjAwMDAwMDB9; koa:sess.sig=xn4Y29-VzTkj4Mi4d_5TEkKdIcs; cf_clearance=uLKtWDIX8Qfgi.9CE0sLl60FT65IIfDU8Zl5bbZ2GCI-1660007870-0-150; _gid=GA1.2.711660218.1660790321; Cookie=enabled; Cookie.sig=lbtpENsrE0x6riM8PFTvoh9nepc; _gat_gtag_UA_104464600_2=1; __cf_bm=7Y_ohnA2tGW.yKqrl7QO__be0aRNgzU4FIuFIMbsXQE-1660903401-0-Ab64K/u8ZaqGAlbREwS9CD1Ldey/YllbUYH/jsdtNjZs92vJjZ2k9NNnE92QugYp79t4L0uYn5OC0VK3B6reYEFFOo050xXw8rf7cvzKVxQ1tHIAzvnsURx79BnGTLX8NQ=="

url="https://glados.rocks/api/user/checkin"
RESULT=$(curl -H "cookie:${cookie}"\
 -H "Content-Type: application/json"\
 -H "sec-ch-ua: \"Chromium\";v=\"104\", \" Not A;Brand\";v=\"99\", \"Google Chrome\";v=\"104\""\
 -H "sec-ch-ua-platform: \"macOS\""\
 -H "user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36"\
 -d "{\"token\": \"glados.network\"}"\
 -X POST $url)

echo -e $RESULT >> ./auto_sign_glados_log.txt

#-e打开转义字符。-E关闭，默认关闭
echo -e "\n--------------------------------\n" >> ./auto_sign_glados_log.txt

echo $RESULT
