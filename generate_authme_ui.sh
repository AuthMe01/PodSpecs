#!/bin/bash

version="$1"

cat <<EOF > AuthMeUI.podspec.json
{
  "name": "AuthMeUI",
  "version": "$version",
  "summary": "AuthMeUI framework",
  "description": "AuthMeUI Framework",
  "homepage": "https://authme.com",
  "license": "BSD",
  "authors": {
    "AuthMe-Team": "dev@authme.com"
  },
  "platforms": {
    "ios": "13.0"
  },
  "source": {
    "git": "https://github.com/AuthMe01/AuthMeUI_iOS.git",
    "tag": "$version"
  },
  "ios": {
    "vendored_frameworks": "AuthMeUI.xcframework"
  },
  "swift_version": "5"
}
EOF

rm -rf AuthMeUI/$version
mkdir AuthMeUI/$version
mv AuthMeUI.podspec.json AuthMeUI/$version