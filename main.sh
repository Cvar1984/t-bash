#!/usr/bin/env bash
token="1136357415:AAHXaLi_DTAScisgexzHUF4yx_ImlZ-nXCo"

sendPhoto()
{
    curl -sF "photo=@${1}" "https://api.telegram.org/bot${token}/sendPhoto?chat_id=${2}" &>/dev/null
}
sendVideo()
{
    curl -sF "video=@${1}" "https://api.telegram.org/bot${token}/sendVideo?chat_id=${2}" &>/dev/null
}
sendAudio()
{
    curl -sF "audio=@${1}" "https://api.telegram.org/bot${token}/sendAudio?chat_id=${2}" &>/dev/null
}
sendDocument()
{
    curl -sF "document=@${1}" "https://api.telegram.org/bot${token}/sendPhoto?chat_id=${2}" &>/dev/null
}
sendMessage()
{
    curl -s "https://api.telegram.org/bot${token}/sendMessage?text=${1}&chat_id=${2}" &>/dev/null
}
sendLocation()
{
    curl -s "https://api.telegram.org/bot${token}/sendLocation?latitude=${1}&longitude=${2}&chat_id=${3}" &>/dev/null
}
