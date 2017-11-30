.PHONY: all install clean

all:
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/LuaJIT-2.1-20171103 && $(MAKE) TARGET_STRIP=@: CCDEBUG=-g Q= XCFLAGS='-DLUAJIT_ENABLE_LUA52COMPAT -msse4.2 -DLUA_USE_APICHECK -DLUA_USE_ASSERT -DLUAJIT_USE_SYSMALLOC -DLUAJIT_USE_VALGRIND' CC=cc PREFIX=/usr/local/openresty-1.13.6.1-valgrind/luajit
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-cjson-2.1.0.5 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/luajit-root/usr/local/openresty-1.13.6.1-valgrind/luajit/include/luajit-2.1 LUA_CMODULE_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib LUA_MODULE_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib CJSON_CFLAGS="-g -O -fpic" CC=cc
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-redis-parser-0.13 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/luajit-root/usr/local/openresty-1.13.6.1-valgrind/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib CFLAGS="-g -O -Wall" CC=cc
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-rds-parser-0.06 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/luajit-root/usr/local/openresty-1.13.6.1-valgrind/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib CFLAGS="-g -O -Wall" CC=cc
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/nginx-1.13.6 && $(MAKE)

install: all
	mkdir -p $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/
	-cp /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/COPYRIGHT $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/LuaJIT-2.1-20171103 && $(MAKE) install TARGET_STRIP=@: CCDEBUG=-g Q= XCFLAGS='-DLUAJIT_ENABLE_LUA52COMPAT -msse4.2 -DLUA_USE_APICHECK -DLUA_USE_ASSERT -DLUAJIT_USE_SYSMALLOC -DLUAJIT_USE_VALGRIND' CC=cc PREFIX=/usr/local/openresty-1.13.6.1-valgrind/luajit DESTDIR=$(DESTDIR)
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-cjson-2.1.0.5 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/luajit-root/usr/local/openresty-1.13.6.1-valgrind/luajit/include/luajit-2.1 LUA_CMODULE_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib LUA_MODULE_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib CJSON_CFLAGS="-g -O -fpic" CC=cc
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-redis-parser-0.13 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/luajit-root/usr/local/openresty-1.13.6.1-valgrind/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib CFLAGS="-g -O -Wall" CC=cc
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-rds-parser-0.06 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/luajit-root/usr/local/openresty-1.13.6.1-valgrind/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib CFLAGS="-g -O -Wall" CC=cc
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-dns-0.20 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-memcached-0.14 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-redis-0.26 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-mysql-0.20 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-string-0.10 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-upload-0.10 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-websocket-0.06 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-lock-0.07 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-lrucache-0.07 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-core-0.1.13 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-upstream-healthcheck-0.05 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/lua-resty-limit-traffic-0.05 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty-1.13.6.1-valgrind/lualib INSTALL=/media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/opm-0.0.4 && /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install bin/* $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/bin/
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/resty-cli-0.20 && /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/install bin/* $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/bin/
	cp /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/resty.index $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/
	cp -r /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/pod $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/
	cd /media/psf/g/idevz/code/src/openresty-1.13.6.1-gdb/build/nginx-1.13.6 && $(MAKE) install DESTDIR=$(DESTDIR)
	mkdir -p $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/site/lualib $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/site/pod $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/site/manifest
	ln -sf /usr/local/openresty-1.13.6.1-valgrind/nginx/sbin/nginx $(DESTDIR)/usr/local/openresty-1.13.6.1-valgrind/bin/openresty

clean:
	rm -rf build
