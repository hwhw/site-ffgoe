GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	kmod-mii \
	kmod-nls-base \
	kmod-usb2 \
	kmod-usb-core \
	kmod-usb-hid \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8150 \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx \
	joe \
	tcpdump \
	vnstat \
	iperf \
	usbutils
endif

#ar71xx-generic
GLUON_TLWR842_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_TLWR1043_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_TLWR2543_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_TLWDR4300_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_WNDR3700_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_WRT160NL_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_DIR825B1_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_GLINET_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_WZRHPG450H_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_WZRHPAG300H_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base
GLUON_ARCHERC7_SITE_PACKAGES := kmod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base

#mpc85xx-generic
GLUON_TLWDR4900_SITE_PACKAGES := mod-usb-core kmod-usb2 tcpdump vnstat iperf usbutils joe kmod-mii kmod-usb-net kmod-usb-net-asix-ax88179 kmod-usb-net kmod-nls-base


	
DEFAULT_GLUON_RELEASE := m_ae_$(shell date '+%Y%m%d%H%M')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de en
