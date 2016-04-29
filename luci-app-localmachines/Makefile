include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-localmachines
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk
PKG_INSTALL:=1

define Package/luci-app-localmachines
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  MAINTAINER:=Fab Lab Berlin IT <it@fablab.berlin>
  TITLE:=Thing
  DEPENDS:=luci
  PKGARCH:=all
endef

define Package/luci-app-localmachines/description
  Local Machines Gateway (XMPP)
endef

define Build/Compile
endef

define Build/Install
endef

define Package/luci-app-localmachines/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	$(CP) ./luasrc/* $(1)/usr/lib/lua/luci
	mkdir -p $(1)/etc/config/
	$(CP) ./root/etc/config/localmachines $(1)/etc/config/
	$(INSTALL_DIR) $(1)/usr/bin
	#$(LN) ../../usr/lib/lua/luci/model/cbi/localmachines/localmachines.lua $(1)/usr/bin/openevse
endef

$(eval $(call BuildPackage,luci-app-localmachines))
