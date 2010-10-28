#!/bin/bash
apt-ftparchive generate config-deb
apt-ftparchive release rocky/dists/mozhate/>rocky/dists/mozhate/Release
gpg --sign -ba -o rocky/dists/mozhate/Release.gpg rocky/dists/mozhate/Release
