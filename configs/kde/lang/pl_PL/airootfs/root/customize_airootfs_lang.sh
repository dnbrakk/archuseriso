#!/bin/bash

set -e -u

# pl_PL.UTF-8 locales
sed -i 's/#\(pl_PL\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Poland, Waesaw timezone
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime