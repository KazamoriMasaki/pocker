#!/usr/bin/perl -w

# Copyright (C) 2020 Kazamori Masaki <KazamoriMasaki@hotmail.com>
# Author: Kazamori Masaki <KazamoriMasaki@hotmail.com>

# This file is part of Pocker.

# Pocker, a light weight yet almost full-fledged docker reimplementation.

# Pocker is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Pocker is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Pocker.  If not, see <https://www.gnu.org/licenses/>.
#

# fork pocker and execute command in process being forked.


# The variable $#ARGV is the subscript of the last element of the @ARGV array, and because the array is zero-based, the number of arguments given on the command line is $#ARGV + 1.
$argc=$#ARGV + 1;

if ($argc <= 1) {
    pocker_help($0);
}


