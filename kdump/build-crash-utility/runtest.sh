#!/bin/sh
# Copyright (c) 2020 Red Hat, Inc. All rights reserved.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

# --- start ---
echo "Install dependency pkgs for crash-utility ..."
sudo yum install git make gcc gcc-c++ glibc bc bison flex ncurses-devel openssl-devel elfutils-devel wget patch tar lzo-devel texinfo bzip2-devel gmp-devel mpfr-devel -y

# sudo dnf --enablerepo=fedora-debuginfo,updates-debuginfo install kernel-debuginfo -y
echo "Clone crash repo and compile crash-utility ..."
git clone https://github.com/crash-utility/crash.git
cd crash && make -j`nproc` lzo && make install
