include $(TOPDIR)/rules.mk

LUCI_TITLE:=Wizard for setting up LocalMachines
LUCI_DEPENDS:=

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature