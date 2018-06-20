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

# Print 5 .
printf '%s\n' {1..5} | mapfile -c 1 -C 'printf . \#'
echo " "
# Print odd and even number
{ printf 'input%s\n' {1..10} | mapfile -c 1 -C '>&$(( (${#x[@]} % 2) + 3 )) printf -- "%.sprefix %s"' x; } 3>outfile0 4>outfile1
cat outfile{0,1}
echo " "
# print odd and even numbers
y=( 'odd[j]' 'even[j++]' ); printf 'input%s\n' {1..10} | { mapfile -tc 1 -C 'printf -v "${y[${#x[@]} % 2]}" -- "%.sprefix %s"' x; printf '%s\n' "${odd[@]}" '' "${even[@]}"; }
