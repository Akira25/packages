include $(TOPDIR)/rules.mk

PKG_NAME:=falter-berlin-dynamic-banner
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/falter-berlin-dynamic-banner/default
  SECTION:=falter-berlin
  CATEGORY:=falter-berlin
  URL:=https://github.com/Freifunk-Spalter/packages
  PKGARCH:=all
endef

define Package/falter-berlin-dynamic-banner
  $(call Package/falter-berlin-dynamic-banner/default)
  TITLE:=Freifunk Berlin dynamic-banner generator
endef

define Package/falter-berlin-dynamic-banner/description
  dynamic-banner generates banners with dynamic information.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/falter-berlin-dynamic-banner/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) ./files/refresh_banner.sh $(1)/usr/bin/refresh_banner.sh
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) ./files/rev.sh $(1)/usr/bin/rev.sh
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(CP) ./files/uci-defaults.sh $(1)/etc/uci-defaults/falter-berlin-dynamic-banner_postinst.sh
endef

$(eval $(call BuildPackage,falter-berlin-dynamic-banner))
