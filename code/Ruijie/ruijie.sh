#!/bin/sh

if [ "${#}" -lt "2" ]; then
  echo "Usage: ./ruijie.sh username password"
  echo "Example: ./ruijie.sh 2017123412345 123456"
  exit 1
fi

captiveReturnCode=`curl -s -I -m 10 -o /dev/null -s -w %{http_code} http://www.google.cn/generate_204`
if [ "${captiveReturnCode}" = "204" ]; then
  echo "你已经成功认证了!"
  exit 0
fi

loginPageURL=`curl -s "http://www.google.cn/generate_204" | awk -F \' '{print $2}'`

loginURL=`echo ${loginPageURL} | awk -F \? '{print $1}'`
loginURL="${loginURL/index.jsp/InterFace.do?method=login}"

#service的参数默认设置为校园网了，如有需要自行修改
#校园网：internet
#中国移动：%25E7%25A7%25BB%25E5%258A%25A8%25E5%2587%25BA%25E5%258F%25A3
#中国电信：%25E7%2594%25B5%25E4%25BF%25A1%25E5%2587%25BA%25E5%258F%25A3
service="internet"
queryString="这里填写你的queryString"
queryString="${queryString//&/%2526}"
queryString="${queryString//=/%253D}"


if [ -n "${loginURL}" ]; then
  authResult=`curl -s -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36" -e "${loginPageURL}" -b "EPORTAL_COOKIE_USERNAME=; EPORTAL_COOKIE_PASSWORD=; EPORTAL_COOKIE_SERVER=; EPORTAL_COOKIE_SERVER_NAME=; EPORTAL_AUTO_LAND=; EPORTAL_USER_GROUP=; EPORTAL_COOKIE_OPERATORPWD=;" -d "userId=${1}&password=${2}&service=${service}&queryString=${queryString}&operatorPwd=&operatorUserId=&validcode=&passwordEncrypt=false" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" "${loginURL}"`
  echo $authResult
fi
