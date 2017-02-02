#!/bin/bash
set -e
WKHTMLTOX_XZ_FILE=wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
WKHTMLTOX_TAR_FILE=wkhtmltox-0.12.3_linux-generic-amd64.tar

cd /tmp
curl -L -O http://download.gna.org/wkhtmltopdf/0.12/0.12.3/$WKHTMLTOX_XZ_FILE

unxz $WKHTMLTOX_XZ_FILE

tar -xvf $WKHTMLTOX_TAR_FILE

cd wkhtmltox/bin

mv wkhtmltopdf  /usr/bin/wkhtmltopdf
