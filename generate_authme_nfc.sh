#!/bin/bash

version="$1"

cat <<EOF > AuthmeNFCKit.podspec.json
{
  "name": "AuthmeNFCKit",
  "version": "'$version'",
  "summary": "AuthmeNFCKit framework",
  "description": "AuthmeNFCKit Framework",
  "homepage": "https://authme.com",
  "license": "BSD",
  "authors": {
    "AuthMe-Team": "dev@authme.com"
  },
  "platforms": {
    "ios": "13.0"
  },
  "source": {
    "git": "https://github.com/AuthMe01/authme-nfc-ios.git",
    "tag": "'$version'"
  },
  "ios": {
    "vendored_frameworks": "AuthmeNFCKit.xcframework"
  },
  "swift_version": "5"
}
EOF

rm -rf AuthmeNFCKit/$version
mkdir AuthmeNFCKit/$version
mv AuthmeNFCKit.podspec.json AuthmeNFCKit/$version