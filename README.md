# Installation

## In OpenWRT work directory:

```
$ echo "src-git easylab https://github.com/FabLabBerlin/luci-app-localmachines.git" >> feeds.conf.default
$ ./scripts/feeds update -a && ./scripts/feeds install -a
$ make menuconfig (select LuCI, Applications, localmachines)
$ make V=99 -j$(nproc)
```
