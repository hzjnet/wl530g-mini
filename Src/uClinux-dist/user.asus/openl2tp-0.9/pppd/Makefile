#############################################################################
# Copyright (C) 2004 Katalix Systems Ltd
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
#
#############################################################################

# BEGIN CONFIGURABLE SETTINGS

ifdef PPPD_SRCDIR
CFLAGS.pppd=	-I$(PPPD_SRCDIR)/include -I$(PPPD_SRCDIR)/pppd
endif

# END CONFIGURABLE SETTINGS

CFLAGS	+= -DWX54G -D__linux__=1 -s $(CFLAGS.pppd) -isystem $(KERNEL_SRCDIR)/include -I.. -I../ppp_headers

.PHONY: all install clean
all: pppol2tp.a ../l2tp_event_rpc_xdr.o ../l2tp_event_rpc_client.o

pppol2tp.a: pppol2tp.o ../l2tp_event_rpc_xdr.o ../l2tp_event_rpc_client.o
	$(AR) -rc $@ $^

%.o: %.c
	$(CC) -o $@ -c $(CFLAGS) $<

install: 

clean:
	-rm -rf *.o *.so *.a
