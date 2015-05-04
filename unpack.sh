#!/usr/bin/env sh
set -e
#source opts

APP="$1"

[ -z "${APKTOOL}" ] && APKTOOL=apktool.jar
TMPD=$(mktemp -d)

${JAVA} -jar apktool.jar d -f -o "${TMPD}" "${APP}" 2>&1 >/dev/null
tar -czvf - -C "${TMPD}" .

