#!/bin/bash
# 定义 UUID 及 伪装路径,请自行修改.(注意:伪装路径以 / 符号开始,为避免不必要的麻烦,请不要使用特殊符号.)
export Token=${Token:-'eyJhIjoiM2M5ZjA1YTFlNDNkZTRlMTBiODhjZWYzODA1NmE4ZWUiLCJ0IjoiOTY4N2MxNzctYjc4My00Njc5LThkOTMtZmM4ZGUwZGMxMjIyIiwicyI6IllUTmtNV0l3TVdFdE1XWTNaUzAwTWpneExUazBNR0l0T1dNMk5UUmxaRFkyWVRjeSJ9'}

# 执行 web.sh 脚本
nohup ./web.sh run ./config.json >/dev/null 2>&1 &
# 执行 argo.sh 脚本
./argo.sh tunnel --edge-ip-version auto run --token $Token


echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version
echo "----- good luck (kid).----- ."
