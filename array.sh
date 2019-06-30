#! /bin/bash
# -*- ENCODING: UTF-8 -*-
# ·

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

array=(one two three four [5]="five y un poco más")

# presento la creación del array
echo "array=(one two three four [5]=\"five y un poco más\")"

echo "Array size: ${#array[*]}"

# en esta forma presenta más elementos de los reales
echo "Array items:"
for item in ${array[*]}; do
    printf "\t%s\n" $item
done

#para tratar los items corectamente cuando estos incluyen espacios
echo "Array items (con espacios)"
for index in ${!array[*]}; do
    printf "\t%s\n" "${array[$index]}"
done

echo "Array indexes:"
for index in ${!array[*]}
do
    printf "\t%d\n" $index
done

echo "Array items and indexes:"
for index in ${!array[*]}
do
    printf "%4d: %s\n" $index "${array[$index]}"
done
