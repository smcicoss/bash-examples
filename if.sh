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

# All options in https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html

if grep --quiet libresoft /etc/hosts; then
  echo "libresoft exists"
else
  echo "libresoft not found in your hosts"
fi

if [ -a lala.sh ]; then
   echo "lala exists"
fi

echo "Give me a number"
read num

if [ $num -gt 100 ]
then
    echo Hey that\'s a large number.
else
    echo "It's a small number."
fi

if [ $num -eq 100 ]
then
    echo The number is 100
fi

if [ -d "/tmp" ]; then
    echo "The temporal directory exists. You are using UNIX"
fi

if ! cmp lala.sh lala.sh~ >/dev/null 2>&1
then
    echo "The backup and the file are differents"
else
    echo "The backup and the file are equals"
fi

