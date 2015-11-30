include $(TOPDIR)/rules.mk

PKG_NAME:=rfkill-disable
PKG_VERSION:=0.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/rfkill-disable
  SECTION:=tool
  CATEGORY:=Hacks
  TITLE:=Disable the function of the wifi on/off switch
endef

define Package/rfkill-disable/install
	$(INSTALL_DIR) $(1)/etc/rc.button
	$(INSTALL_DATA) ./files/etc/rc.button/rfkill $(1)/etc/rc.button/rfkill
endef