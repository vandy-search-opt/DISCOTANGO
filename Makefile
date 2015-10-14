# Makefile for DISCOTANGO library.
# Copyright (c) 2015 Danny McClanahan, Richard Kerr

# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.

# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.

# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 59 Temple
# Place, Suite 330, Boston, MA 02111-1307 USA

.PHONY: all clean distclean test

CC := gcc

DEPS := $(shell find . -name "*.h")
IN := $(wildcard opt/*.c)
OUT := $(patsubst %.c,%.o,$(IN))

DYNAMIC := libdiscotango.so
STATIC := libdiscotango.a
BIN := $(DYNAMIC) $(STATIC)

CC_OPTS := -std=c99
LINK_OPTS :=

all: $(BIN)

%.o: %.c $(DEPS)
	$(CC) -fPIC $(CC_OPTS) -o $@ -c $<

$(DYNAMIC): $(OUT)
	$(CC) -shared $(LINK_OPTS) -o $@ $^

$(STATIC): $(OUT)
	ar rcs $@ $^

clean:
	rm -f $(OUT) $(BIN)

distclean: clean

test:
	echo 'not defined!' && exit -1
