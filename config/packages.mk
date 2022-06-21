# NightShadeOS packages
PRODUCT_PACKAGES += \
    Terminal \
    ThemePicker \
    Eleven \
    Etar \
    OmniJaws

# Smartcookieweb
SMARTCOOKIEWEB ?= true
ifeq ($(strip $(SMARTCOOKIEWEB)),true)
     PRODUCT_PACKAGES += \
         SmartCookieWeb
endif

# Extra tools in NightShade
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# turbo
PRODUCT_PACKAGES += \
    Turbo

# rsync
PRODUCT_PACKAGES += \
    rsync
