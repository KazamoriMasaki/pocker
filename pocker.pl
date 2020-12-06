#!/usr/bin/perl

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

# use switch-like statement in perl without warnnings
# ref: https://stackoverflow.com/questions/43376193/how-to-mute-that-when-and-given-are-experimental-in-perl
use experimental qw(switch);

# fork pocker and execute command in process being forked.

# display help message
sub pocker_help {
    print "Usage: pocker [OPTIONS] COMMAND\n";
}

sub pocker_pull {
}

sub pocker_init {
}

sub pocker_rm {
}

sub pocker_images {
}

sub pocker_ps {
}

sub pocker_run {
}

sub pocker_exec {
}

sub pocker_logs {
}

sub pocker_commit {
}

# The variable $#ARGV is the subscript of the last element of the @ARGV array,
# and because the array is zero-based, the number of arguments given on
# the command line is $#ARGV + 1.

# If command line options passed to perl, $#ARGV would be -1, so that $argc we
# define counts on how many arguments passing to this perl script directly.

# #ARGV stores arguments passing to this perl script excluding command line token
# denoted the path to this perl script itself.

# For example, if we type 
#     ./pocker.el arg0 arg1 in shell
# #ARGV would be
#     {arg0, arg1}

$argc=$#ARGV + 1;

if ($argc < 1) {
    pocker_help();
} else {
    # ARGV counts from zero.
    given($ARGV[0]) {  
	@COMMAND_ARGS=@ARGV[1, $#ARGV];

	when("pull") {pocker_pull(@COMMAND_ARGS);}
	when("init") {pocker_init(@COMMAND_ARGS);}
	when("rm") {pocker_rm(@COMMAND_ARGS);}
	when("images") {pocker_images(@COMMAND_ARGS);}
	when("ps") {pocker_ps(@COMMAND_ARGS);}
	when("run") {pocker_run(@COMMAND_ARGS);}
	when("exec") {pocker_exec(@COMMAND_ARGS);}
	when("logs") {pocker_logs(@COMMAND_ARGS);}
	when("commit") {pocker_commit(@COMMAND_ARGS);}
	default {print "no such command $ARGV[0]\n";}
    }
}


