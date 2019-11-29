#!/usr/bin/env bash

# SF Pro 字体下载
SF_Pro_URL="https://developer.apple.com/fonts/downloads/SFPro.zip"
SF_Pro_DIR=/tmp/SFPro
[[ -d ${SF_Pro_DIR} ]] || mkdir -p ${SF_Pro_DIR}
pushd ${SF_Pro_DIR} && {
    wget -c ${SF_Pro_URL} -O ${SF_Pro_DIR}/SFPro.zip
    unzip SFPro.zip
    bsdtar xvPf ./SFPro/'San Francisco Pro.pkg'
    bsdtar xvPf ./'San Francisco Pro.pkg/Payload'
    cd ./Library && mv -vf Fonts SFPro
    tar -Jcvf SFPro.tar.xz SFPro/*
    mv SFPro.tar.xz "${HOME}/SFPro-$(date +%F).tar.xz"
}
rm -rf ${SF_Pro_DIR}
popd || echo "bad"

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

# SF Mono字体下载
SFMono="SFMonoFonts"
SFMono_URL="https://developer.apple.com/design/downloads/SF-Mono.dmg"
SFMono_DIR=/tmp/${SFMono}
[[ -d ${SFMono_DIR} ]] || mkdir -p ${SFMono_DIR}
pushd ${SFMono_DIR} && {
    wget -c ${SFMono_URL}
    7z x SF-Mono.dmg
    bsdtar xvPf ./${SFMono}/'SF Mono Fonts.pkg'
    bsdtar xvPf ./'SFMonoFonts.pkg/Payload'
    cd ./Library && mv -vf Fonts $SFMono
    tar -Jcvf ${SFMono}.tar.xz ${SFMono}/*
    mv ${SFMono}.tar.xz "${HOME}/${SFMono}-$(date +%F).tar.xz"
}
rm -rf ${SFMono_DIR}
popd || echo "bad"

NY="NYFonts"
NY_URL="https://developer.apple.com/design/downloads/NY-Font.dmg"
NY_DIR=/tmp/${NY}
[[ -d ${NY_DIR} ]] || mkdir -p ${NY_DIR}
pushd ${NY_DIR} && {
    wget -c ${NY_URL}
    7z x NY-Font.dmg
    bsdtar xvPf ./${NY}/'NY Fonts.pkg'
    bsdtar xvPf ./${NY}.pkg/Payload
    cd ./Library && mv -vf Fonts ${NY}
    tar -Jcvf ${NY}.tar.xz ${NY}/*
    mv ${NY}.tar.xz "${HOME}/${NY}-$(date +%F).tar.xz"
}
rm -rf ${NY_DIR}
popd || echo "bad"
