#!/bin/bash

version="$1"

cat <<EOF > AuthMe.podspec.json
{
  "name": "AuthMe",
  "version": "$version",
  "summary": "AuthMe framework",
  "description": "AuthMe Framework",
  "homepage": "https://authme.com",
  "license": "BSD",
  "authors": {
    "AuthMe-Team": "dev@authme.com"
  },
  "platforms": {
    "ios": "13.0"
  },
  "source": {
    "git": "https://github.com/AuthMe01/AuthMe_iOS.git",
    "tag": "$version"
  },
  "ios": {
    "vendored_frameworks": [
      "AuthMe.xcframework",
      "Algo.xcframework"
    ],
    "weak_frameworks": [
      "AuthMe",
      "Algo"
    ]
  },
  "libraries": "c++",
  "swift_version": "5"
}
EOF

rm -rf AuthMe/$version
mkdir AuthMe/$version
mv AuthMe.podspec.json AuthMe/$version
