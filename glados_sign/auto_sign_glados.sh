#!/bin/bash

# $1为第一个参数，$0为文件名

#设置第一个参数为cookie
cookie="_ga=GA1.2.1891431373.1644477268; koa:sess=eyJ1c2VySWQiOjEzMzU0MiwiX2V4cGlyZSI6MTY3MDk4MTEzNzM3MCwiX21heEFnZSI6MjU5MjAwMDAwMDB9; koa:sess.sig=fK5IIA8XhjG9Qf-RuCaK-iJQ4BA; _gid=GA1.2.833999213.1656741852; __cf_bm=17KdVIzKhZBzujCaA0fUJnSCeEREpWgJnT3QYmUtgRQ-1656741852-0-AR4rOZ/4+0stB5mrbECmX9Bhz56QP4qGNitVetx6/DdzA5sjgj+g4LzzLVNKtuCU59fqZNg++7NccVbLmPUqmkG61HkbSn7vVxyXen5O+VtlqlTh6R2NUG/1ZEnqhpxuNA=="

url="https://glados.rocks/api/user/checkin"
RESULT=$(curl -H "cookie:${cookie}"\
 -H "Content-Type: application/json"\
 -d "{\"token\": \"glados.network\"}"\
 -X POST $url)

echo -e $RESULT >> ./auto_sign_glados_log.txt

#-e打开转义字符。-E关闭，默认关闭
echo -e "\n--------------------------------\n" >> ./auto_sign_glados_log.txt

echo $RESULT
