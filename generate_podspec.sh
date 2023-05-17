#!/bin/sh

# 取得傳入的參數作為版本號
version=$1

# 定義要生成的 JSON 內容
json='{"name":"AuthMe","version":"'$version'","summary":"AuthMe framework","description":"AuthMe Framework","homepage":"https://authme.com","license":"BSD","authors":{"AuthMe-Team":"dev@authme.com"},"platforms":{"ios":"11.0"},"source":{"git":"https://github.com/AuthMe01/AuthMe_iOS.git","tag":"'$version'"},"swift_versions":"4.2","ios":{"vendored_frameworks":["AuthMe.xcframework","onnxruntime.xcframework","OpenSSL.xcframework","Algo.xcframework"],"weak_frameworks":["AuthMe","onnxruntime","OpenSSL","Algo"]},"libraries":"c++","swift_version":"4.2"}'

# 將 JSON 內容輸出到檔案
echo $json > AuthMe.podspec.json
rm -rf AuthMe/$version
mkdir AuthMe/$version
mv AuthMe.podspec.json AuthMe/$version

json2='{"name":"AuthMeUI","version":"'$version'","summary":"AuthMeUI framework","description":"AuthMeUI Framework","homepage":"https://authme.com","license":"BSD","authors":{"AuthMe-Team":"dev@authme.com"},"platforms":{"ios":"11.0"},"source":{"git":"https://github.com/AuthMe01/AuthMeUI_iOS.git","tag":"'$version'"},"swift_versions":"4.2","ios":{"vendored_frameworks":"AuthMeUI.xcframework"},"dependencies":{"AuthMe":[]},"swift_version":"4.2"}'

echo $json2 > AuthMeUI.podspec.json
rm -rf AuthMeUI/$version
mkdir AuthMeUI/$version
mv AuthMeUI.podspec.json AuthMeUI/$version