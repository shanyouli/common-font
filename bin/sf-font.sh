#!/usr/bin/env bash

# SF Pro 字体下载
# SF_Pro_URL="https://developer.apple.com/fonts/downloads/SFPro.zip"
# SF_Pro_DIR=/tmp/SFPro
# [[ -d ${SF_Pro_DIR} ]] || mkdir -p ${SF_Pro_DIR}
# pushd ${SF_Pro_DIR} && {
#     wget -c ${SF_Pro_URL} -O ${SF_Pro_DIR}/SFPro.zip
#     unzip SFPro.zip
#     bsdtar xvPf ./SFPro/'San Francisco Pro.pkg'
#     bsdtar xvPf ./'San Francisco Pro.pkg/Payload'
#     cd ./Library && mv -vf Fonts SFPro
#     tar -Jcvf SFPro.tar.xz SFPro/*
#     mv SFPro.tar.xz "${HOME}/SFPro-$(date +%F).tar.xz"
# }
# rm -rf ${SF_Pro_DIR}
# popd || echo "bad"

# SF Compact字体下载
SFCompact_URL="https://developer.apple.com/fonts/downloads/SFCompact.zip"
SFCompact_DIR=/tmp/SFPro
[[ -d ${SFCompact_DIR} ]] || mkdir -p ${SFCompact_DIR}
pushd ${SFCompact_DIR} && {
    wget -c ${SFCompact_URL} -O ${SFCompact_DIR}/SFCompact.zip
    unzip SFCompact.zip
    bsdtar xvPf ./SFCompact/'San Francisco Compact.pkg'
    bsdtar xvPf ./'San Francisco Compact.pkg/Payload'
    cd ./Library && mv -vf Fonts SFCompact
    tar -Jcvf SFCompact.tar.xz SFCompact/*
    mv SFCompact.tar.xz "${HOME}/SFCompact-$(date +%F).tar.xz"
}
rm -rf ${SFCompact_DIR}
popd || echo "bad"
