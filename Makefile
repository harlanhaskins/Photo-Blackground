ARCHS=armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = PhotoBlackground
PhotoBlackground_FILES = Tweak.xm
PhotoBlackground_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileSlideShow"

purge:
	rm *.deb
	rm -rf obj/
	rm -rf _/
