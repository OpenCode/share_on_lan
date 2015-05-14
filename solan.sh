#!/usr/bin/bash

# ######################################################################
#
#  SOLAN - Share On LAN
#
#  Copyright 2015 Francesco OpenCode Apruzzese <opencode@e-ware.org>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
# ######################################################################

# ----- Move to passed path
path=$1
cd $path
echo "Moved to $path"
# ----- Get port
port=${2:-8000}
# ----- Get local IP
lan_ip=$(hostname -I)
lan_ip=${lan_ip/ /}  # Remove last white space
echo "Connection open on $lan_ip:$port"
# ----- Server ON
echo "Starting server"
python -m SimpleHTTPServer $port
