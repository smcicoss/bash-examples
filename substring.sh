#!/bin/bash

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

string=01234567890abcdefgh
# Print string
echo $string
# From 7 print string
echo ${string:7}
# From 7 print 0 characters
echo ${string:7:0}
# From 7 print 2 characters
echo ${string:7:2}
# From 7 print all characters minus 2
echo ${string:7:-2}

# You can print substrings storing the values with set
set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo ${@:7}

# You can print substring storing the values with a vector
vector[0]=01234567890abcdefgh
echo ${vector[0]:7}
