#!/bin/bash

set -e -u

# de_DE.UTF-8 locales
sed -i 's/#\(de_DE\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# France, Paris timezone
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime