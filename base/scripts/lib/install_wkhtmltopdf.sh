#!/bin/bash
set -e
WKHTMLTOX_XZ_FILE=wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
WKHTMLTOX_TAR_FILE=wkhtmltox-0.12.3_linux-generic-amd64.tar

apt-get install -y libfontconfig1 libxrender1

cd /tmp
curl -L -O http://download.gna.org/wkhtmltopdf/0.12/0.12.3/$WKHTMLTOX_XZ_FILE

unxz $WKHTMLTOX_XZ_FILE

tar -xvf $WKHTMLTOX_TAR_FILE

cd wkhtmltox

cp -r * /usr
