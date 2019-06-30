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

echo -n "Introduzca el nombre de un animal: "
read ANIMAL
echo -n "El $ANIMAL tiene "
case $ANIMAL in
	caballo | perro | gato)
		echo -n "cuatro"
		;;
	hombre | canguro ) 
		echo -n "dos"
		;;
	*) 
		echo -n "un número desconocido de"
		;;
esac
echo " patas."
