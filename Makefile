include $(TOPDIR)/rules.mk

PKG_NAME:=rfkill-disable
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

define Package/rfkill-disable
  SECTION:=tools
  CATEGORY:=Tools
  TITLE:=Disable the function of the wifi on/off button
endef

define Package/gluon-migrate-vpn/description
	Overrides the openwrt rfkill script, rendering the wifi on/off button without function
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/rfkill-disable/install
	$(CP) ./files/* $(1)/
endef

define Package/gluon-migrate-vpn/postinst
endef

$(eval $(call BuildPackage,rfkill-disable))