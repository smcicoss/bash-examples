#!/bin/bash
# -*- coding: utf-8 -*-

# Copyright (C) 2018  David Arroyo Menéndez

# Author: David Arroyo Menéndez <davidam@gnu.org>
# Maintainer: David Arroyo Menéndez <davidam@gnu.org>

# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.

# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with GNU Emacs; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301 USA,

# Print a replacement in a file
sed -e 's/ABRIL/MAYO/g' | grep -i MAYO

# Execute a replacement in a file
sed -i 's/ABRIL/MAYO/g' femeninos.txt

# Print only lines from 2 to 6
yes | head -9 | cat -n | sed -n -e '/2/,/6/ p'

# Remove comments in file
sed -e '/^#/d' /etc/services
