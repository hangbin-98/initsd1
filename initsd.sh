#!/usr/bin/env bash

SDCARD_PATH=/media/user/bootfs
CONFIG_TXT=config.txt
CMDLINE_TXT=cmdline.txt

# SD 카드가 있는지 확인하는 함수
detectSD() {
    while true; do
        if [ -d "${SDCARD_PATH}" ]; then
            echo "SD카드가 발견됨!"
            return
        fi
        sleep 1
    done
}

echo "detectSD 호출 전"
detectSD
echo "detectSD 호출 후"

# config.txt와 cmdline.txt를 확인하는 함수
detectCMDLINE() {
    sleep 1
    if [ -f "${SDCARD_PATH}/${CMDLINE_TXT}" ]; then
        echo "cmdline.txt 가 발견됨!"
        return 0
    else
        echo "cmdline.txt 를 찾을 수 없습니다."
        return 1
    fi
}

echo "cmdline.txt 확인 중"
detectCMDLINE

# config.txt와 cmdline.txt를 확인하는 함수
detectCONFIG() {
    sleep 1
    if [ -f "${SDCARD_PATH}/${CONFIG_TXT}" ]; then
        echo "config.txt 가 발견됨!"
        return 0
    else
        echo "config.txt 를 찾을 수 없습니다."
        return 1
    fi
}

echo "config.txt 확인 중"
detectCONFIG
