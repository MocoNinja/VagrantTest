#!/bin/bash


# Este script es para mí, así que hardcodeo && facilidad >> adapatabilidad y case/esac
if [ ! $# -eq 1 ]; then
    echo "No me has pasado el TOKEN!"
    exit 1
else 
    TOKEN=$1
fi

if [ ! -f package.box ]; then
    echo "Necesito una caja para subir melón"
    exit 1
fi

USERNAME="moconinja"
BOX_NAME="debian-lvm-docker"
VERSION="1.0"
PROVIDER_NAME="virtualbox"
URL="https://vagrantcloud.com/api/v1/box/$USERNAME/$BOX_NAME/version/$VERSION/provider/$PROVIDER_NAME/upload?access_token=$TOKEN"
CMD="curl -s $URL"

UPLOAD_PATH=$($CMD)
UPLOAD_PATH="https:$(echo $UPLOAD_PATH | cut -d ":" -f "3" | tr -d "}" | tr -d "\"")"

CMD="curl -X PUT --upload-file package.box $UPLOAD_PATH"

$CMD
