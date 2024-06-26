# GENERATED CODE! Run monokde.py --cmake to regenerate.

kde_project(frameworks/extra-cmake-modules)
kde_project(
  kdesupport/plasma-wayland-protocols
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/ki18n
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kguiaddons
  DEPENDS
    extra-cmake-modules
    plasma-wayland-protocols
)
kde_project(
  frameworks/kconfig
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kwidgetsaddons
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kcoreaddons
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kcolorscheme
  DEPENDS
    extra-cmake-modules
    kconfig
    kguiaddons
    ki18n
)
kde_project(
  frameworks/kcodecs
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/sonnet
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kconfigwidgets
  DEPENDS
    extra-cmake-modules
    kcodecs
    kcolorscheme
    kconfig
    kcoreaddons
    kguiaddons
    ki18n
    kwidgetsaddons
)
kde_project(
  frameworks/kcompletion
  DEPENDS
    extra-cmake-modules
    kcodecs
    kconfig
    kwidgetsaddons
)
kde_project(
  frameworks/breeze-icons
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/karchive
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kglobalaccel
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/ktextwidgets
  DEPENDS
    extra-cmake-modules
    kcompletion
    kconfig
    kconfigwidgets
    ki18n
    kwidgetsaddons
    sonnet
)
kde_project(
  frameworks/kitemviews
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kiconthemes
  DEPENDS
    extra-cmake-modules
    karchive
    kcolorscheme
    kconfigwidgets
    ki18n
    kwidgetsaddons
    breeze-icons
)
kde_project(
  frameworks/kwindowsystem
  DEPENDS
    extra-cmake-modules
    plasma-wayland-protocols
)
kde_project(
  frameworks/knotifications
  DEPENDS
    extra-cmake-modules
    kconfig
)
kde_project(
  frameworks/kdbusaddons
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kdoctools
  DEPENDS
    extra-cmake-modules
    karchive
    ki18n
)
kde_project(
  frameworks/kxmlgui
  DEPENDS
    extra-cmake-modules
    kconfig
    kconfigwidgets
    ki18n
    kiconthemes
    kitemviews
    ktextwidgets
    kwidgetsaddons
    kglobalaccel
)
kde_project(
  frameworks/kitemmodels
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kcrash
  DEPENDS
    extra-cmake-modules
    kcoreaddons
)
kde_project(
  frameworks/kwallet
  DEPENDS
    extra-cmake-modules
    kcolorscheme
    kconfig
    kcoreaddons
    kdbusaddons
    ki18n
    kiconthemes
    knotifications
    kwidgetsaddons
    kwindowsystem
)
kde_project(
  frameworks/kauth
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kwindowsystem
)
kde_project(
  frameworks/solid
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kservice
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    ki18n
    kdoctools
)
kde_project(
  frameworks/kjobwidgets
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    knotifications
    kwidgetsaddons
)
kde_project(
  frameworks/kbookmarks
  DEPENDS
    extra-cmake-modules
    kconfig
    kconfigwidgets
    kcoreaddons
)
kde_project(
  frameworks/syndication
  DEPENDS
    extra-cmake-modules
    kcodecs
)
kde_project(
  frameworks/kpackage
  DEPENDS
    extra-cmake-modules
    karchive
    kcoreaddons
    kdoctools
    ki18n
)
kde_project(
  frameworks/kirigami
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/attica
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kio
  DEPENDS
    extra-cmake-modules
    karchive
    kbookmarks
    kcolorscheme
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kguiaddons
    ki18n
    kiconthemes
    kitemviews
    kjobwidgets
    knotifications
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
    kcrash
    kdbusaddons
    kdoctools
    kauth
    kwallet
)
kde_project(
  frameworks/syntax-highlighting
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/threadweaver
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/ktexttemplate
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/knewstuff
  DEPENDS
    attica
    extra-cmake-modules
    karchive
    kconfig
    kcoreaddons
    ki18n
    kirigami
    kpackage
    kwidgetsaddons
    syndication
)
kde_project(
  frameworks/krunner
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    ki18n
    kitemmodels
    threadweaver
)
kde_project(
  frameworks/kcontacts
  DEPENDS
    extra-cmake-modules
    kcodecs
    kconfig
    kcoreaddons
    ki18n
)
kde_project(
  frameworks/kcmutils
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    ki18n
    kio
    kirigami
    kitemviews
    kxmlgui
)
kde_project(
  frameworks/kcalendarcore
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/prison
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/purpose
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    ki18n
    kio
    kirigami
    kservice
)
kde_project(
  frameworks/kparts
  DEPENDS
    extra-cmake-modules
    kio
    knotifications
    kxmlgui
)
kde_project(
  frameworks/knotifyconfig
  DEPENDS
    extra-cmake-modules
    ki18n
    kio
    knotifications
    kxmlgui
)
kde_project(
  kde/workspace/plasma-activities
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    kwindowsystem
)
kde_project(
  frameworks/ksvg
  DEPENDS
    extra-cmake-modules
    karchive
    kcolorscheme
    kconfig
    kcoreaddons
    kguiaddons
    kirigami
)
kde_project(
  frameworks/oxygen-icons
  DEPENDS
    extra-cmake-modules
)
kde_project(
  extragear/libs/kirigami-addons
  DEPENDS
    extra-cmake-modules
    ki18n
    kirigami
)
kde_project(
  frameworks/kdeclarative
  DEPENDS
    extra-cmake-modules
    kconfig
    kguiaddons
    ki18n
    kwidgetsaddons
    kglobalaccel
)
kde_project(
  kde/workspace/libplasma
  DEPENDS
    extra-cmake-modules
    karchive
    kcmutils
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    kglobalaccel
    kguiaddons
    ki18n
    kiconthemes
    kio
    kirigami
    knotifications
    kpackage
    kparts
    ksvg
    kwidgetsaddons
    kwindowsystem
    plasma-activities
)
kde_project(
  kde/workspace/libkscreen
  DEPENDS
    extra-cmake-modules
    plasma-wayland-protocols
)
kde_project(
  kde/workspace/layer-shell-qt
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kidletime
  DEPENDS
    extra-cmake-modules
    plasma-wayland-protocols
)
kde_project(
  kde/workspace/kdecoration
  DEPENDS
    extra-cmake-modules
    ki18n
)
kde_project(
  frameworks/frameworkintegration
  DEPENDS
    extra-cmake-modules
    kcolorscheme
    kconfig
    kconfigwidgets
    kguiaddons
    ki18n
    kiconthemes
    kio
    kitemviews
    knewstuff
    knotifications
    kpackage
    kwidgetsaddons
    oxygen-icons
)
kde_project(
  kde/workspace/kwayland
  DEPENDS
    extra-cmake-modules
    plasma-wayland-protocols
)
kde_project(
  kde/workspace/kscreenlocker
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kglobalaccel
    ki18n
    kidletime
    knotifications
    kservice
    ksvg
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    layer-shell-qt
    libkscreen
    libplasma
    kdeclarative
)
kde_project(
  kde/workspace/kpipewire
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    ki18n
    plasma-wayland-protocols
)
kde_project(
  playground/base/kglobalacceld
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    kcrash
    kdbusaddons
    kglobalaccel
    kio
    kjobwidgets
    kservice
    kwindowsystem
)
kde_project(
  kde/workspace/breeze
  DEPENDS
    extra-cmake-modules
    kcolorscheme
    kconfig
    kcoreaddons
    kguiaddons
    ki18n
    kiconthemes
    kirigami
    kwindowsystem
    frameworkintegration
    kcmutils
    kdecoration
)
kde_project(
  frameworks/kfilemetadata
  DEPENDS
    extra-cmake-modules
    karchive
    kcodecs
    kcoreaddons
    ki18n
)
kde_project(
  kde/workspace/kwin
  DEPENDS
    breeze-icons
    extra-cmake-modules
    kcmutils
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kdeclarative
    kdoctools
    kglobalaccel
    ki18n
    kidletime
    knewstuff
    knotifications
    kpackage
    kservice
    ksvg
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    plasma-wayland-protocols
    breeze
    kdecoration
    kglobalacceld
    kpipewire
    kscreenlocker
    kwayland
    plasma-activities
    kirigami
    libplasma
)
kde_project(
  kde/workspace/plasma-activities-stats
  DEPENDS
    extra-cmake-modules
    plasma-activities
)
kde_project(
  frameworks/kdnssd
  DEPENDS
    extra-cmake-modules
)
kde_project(
  kde/workspace/libksysguard
  DEPENDS
    extra-cmake-modules
    kauth
    kconfig
    kcoreaddons
    ki18n
    knewstuff
    kpackage
    kservice
    solid
)
kde_project(
  frameworks/kpty
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    ki18n
)
kde_project(
  frameworks/kholidays
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/ktexteditor
  DEPENDS
    breeze-icons
    extra-cmake-modules
    karchive
    kconfig
    kguiaddons
    ki18n
    kio
    kjobwidgets
    kparts
    ktextwidgets
    kxmlgui
    sonnet
    syntax-highlighting
    kauth
)
kde_project(
  frameworks/baloo
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    kcrash
    kdbusaddons
    kfilemetadata
    ki18n
    kidletime
    kio
    solid
)
kde_project(
  kde/workspace/milou
  DEPENDS
    extra-cmake-modules
    kconfig
    ki18n
    krunner
    libplasma
)
kde_project(
  frameworks/qqc2-desktop-style
  DEPENDS
    extra-cmake-modules
    kcolorscheme
    kiconthemes
    kirigami
    sonnet
)
kde_project(
  frameworks/networkmanager-qt
  DEPENDS
    extra-cmake-modules
)
kde_project(
  kde/workspace/plasma5support
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    kguiaddons
    ki18n
    kio
    knotifications
    kservice
    solid
    libksysguard
    libplasma
)
kde_project(
  kde/workspace/plasma-nano
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    ki18n
    kitemmodels
    kservice
    ksvg
    kwindowsystem
    kwayland
    libplasma
)
kde_project(
  frameworks/kuserfeedback
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kunitconversion
  DEPENDS
    extra-cmake-modules
    kconfig
    ki18n
)
kde_project(
  frameworks/kstatusnotifieritem
  DEPENDS
    extra-cmake-modules
    kwindowsystem
)
kde_project(
  frameworks/kquickcharts
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kdesu
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    kpty
)
kde_project(
  frameworks/kded
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kcrash
    kdbusaddons
    kdoctools
    ki18n
    kservice
)
kde_project(
  kde/workspace/plasma-workspace
  DEPENDS
    attica
    baloo
    extra-cmake-modules
    kauth
    kbookmarks
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kdbusaddons
    kdeclarative
    kded
    kdesu
    kfilemetadata
    kglobalaccel
    kguiaddons
    kholidays
    ki18n
    kiconthemes
    kio
    kitemmodels
    kitemviews
    kjobwidgets
    knewstuff
    knotifications
    knotifyconfig
    kpackage
    kparts
    kquickcharts
    krunner
    kservice
    kstatusnotifieritem
    ktexteditor
    ktextwidgets
    kunitconversion
    kuserfeedback
    kwallet
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    prison
    solid
    sonnet
    kirigami-addons
    plasma-wayland-protocols
    kpipewire
    kscreenlocker
    kwayland
    kwin
    layer-shell-qt
    libkscreen
    libksysguard
    libplasma
    plasma-activities
    plasma-activities-stats
    plasma-nano
    plasma5support
    networkmanager-qt
    qqc2-desktop-style
    kglobalacceld
    milou
)
kde_project(
  extragear/libs/pulseaudio-qt
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/modemmanager-qt
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/bluez-qt
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kdav
  DEPENDS
    extra-cmake-modules
    kio
)
kde_project(
  kde/workspace/qqc2-breeze-style
  DEPENDS
    extra-cmake-modules
    kcodecs
    kcolorscheme
    kconfig
    kcoreaddons
    kguiaddons
    kirigami
    kquickcharts
    kiconthemes
)
kde_project(
  kde/workspace/plasma-pa
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kcoreaddons
    kdeclarative
    kglobalaccel
    ki18n
    kpackage
    kstatusnotifieritem
    ksvg
    kirigami-addons
    pulseaudio-qt
    libplasma
    plasma-workspace
)
kde_project(
  kde/workspace/plasma-nm
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    ki18n
    kio
    kjobwidgets
    knotifications
    kpackage
    kservice
    ksvg
    kwallet
    kwidgetsaddons
    kwindowsystem
    modemmanager-qt
    networkmanager-qt
    solid
    libplasma
)
kde_project(
  kde/workspace/bluedevil
  DEPENDS
    bluez-qt
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    kdoctools
    ki18n
    kio
    kitemviews
    kjobwidgets
    knotifications
    kservice
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    solid
    libplasma
)
kde_project(
  kde/workspace/kactivitymanagerd
  DEPENDS
    extra-cmake-modules
    kauth
    kcodecs
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kdbusaddons
    kglobalaccel
    ki18n
    kio
    kservice
    kwidgetsaddons
    kwindowsystem
    kxmlgui
)
kde_project(
  kde/workspace/plasma-integration
  DEPENDS
    extra-cmake-modules
    kcolorscheme
    kconfig
    kcoreaddons
    kguiaddons
    ki18n
    kiconthemes
    kio
    kjobwidgets
    knotifications
    kservice
    kstatusnotifieritem
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    breeze
)
kde_project(
  kde/workspace/systemsettings
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kcrash
    kdbusaddons
    kdoctools
    kguiaddons
    ki18n
    kiconthemes
    kio
    kirigami
    kitemmodels
    kitemviews
    knotifications
    krunner
    kservice
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    plasma-activities
)
kde_project(
  kde/workspace/powerdevil
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kdbusaddons
    kglobalaccel
    ki18n
    kidletime
    kio
    kjobwidgets
    knotifications
    kservice
    kwindowsystem
    kxmlgui
    solid
    libkscreen
    plasma-activities
    plasma-workspace
)
kde_project(
  kde/workspace/xdg-desktop-portal-kde
  DEPENDS
    extra-cmake-modules
    kauth
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    ki18n
    kio
    kirigami
    kitemviews
    kjobwidgets
    knotifications
    kservice
    kstatusnotifieritem
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    solid
    kwayland
    kiconthemes
)
kde_project(
  kde/workspace/plasma-systemmonitor
  DEPENDS
    attica
    extra-cmake-modules
    kconfig
    kcoreaddons
    kdbusaddons
    kglobalaccel
    ki18n
    kio
    kitemmodels
    knewstuff
    kpackage
    kservice
    kwindowsystem
    kirigami-addons
    libksysguard
    kiconthemes
)
kde_project(
  frameworks/kpeople
  DEPENDS
    extra-cmake-modules
    kcontacts
    kcoreaddons
    ki18n
    kitemviews
    kwidgetsaddons
)
kde_project(
  frameworks/kplotting
  DEPENDS
    extra-cmake-modules
)
kde_project(
  frameworks/kimageformats
  DEPENDS
    extra-cmake-modules
    karchive
)
kde_project(
  kde/workspace/wacomtablet
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kcoreaddons
    kdbusaddons
    kdoctools
    kglobalaccel
    ki18n
    kio
    knotifications
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    libplasma
    plasma5support
)
kde_project(
  kde/workspace/sddm-kcm
  DEPENDS
    extra-cmake-modules
    karchive
    kauth
    kcmutils
    kcoreaddons
    ki18n
    kio
    knewstuff
    kservice
)
kde_project(
  kde/workspace/print-manager
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    ki18n
    kiconthemes
    kio
    kirigami
    knotifications
    kwidgetsaddons
    kwindowsystem
    libplasma
)
kde_project(
  kde/workspace/polkit-kde-agent-1
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kcrash
    kdbusaddons
    ki18n
    kwindowsystem
)
kde_project(
  kde/workspace/plymouth-kcm
  DEPENDS
    extra-cmake-modules
    karchive
    kauth
    kcmutils
    kcodecs
    kconfig
    kconfigwidgets
    kcoreaddons
    ki18n
    kio
    knewstuff
    kservice
    kwidgetsaddons
    kxmlgui
)
kde_project(
  kde/workspace/plasma-welcome
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kdbusaddons
    ki18n
    kio
    kirigami
    kjobwidgets
    knewstuff
    knotifications
    ksvg
    kwindowsystem
    kirigami-addons
    libplasma
)
kde_project(
  kde/workspace/plasma-vault
  DEPENDS
    extra-cmake-modules
    kauth
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    ki18n
    kio
    kitemmodels
    kjobwidgets
    kpackage
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
    libksysguard
    libplasma
    plasma-activities
    networkmanager-qt
)
kde_project(
  kde/workspace/plasma-thunderbolt
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kcoreaddons
    kdbusaddons
    ki18n
    knotifications
    kservice
)
kde_project(
  kde/workspace/plasma-sdk
  DEPENDS
    extra-cmake-modules
    karchive
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    ki18n
    kiconthemes
    kio
    kitemmodels
    kjobwidgets
    kpackage
    kparts
    ksvg
    ktexteditor
    ktextwidgets
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    solid
    sonnet
    syntax-highlighting
    libplasma
    plasma5support
)
kde_project(
  kde/workspace/plasma-mobile
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    ki18n
    kio
    kitemmodels
    kjobwidgets
    knotifications
    kpackage
    kservice
    kwindowsystem
    modemmanager-qt
    networkmanager-qt
    kirigami-addons
    kwayland
    kwin
    libkscreen
    libplasma
    plasma-workspace
    bluez-qt
    bluedevil
    milou
    plasma-nm
    plasma-pa
    qqc2-breeze-style
)
kde_project(
  kde/workspace/plasma-firewall
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kconfig
    kcoreaddons
    ki18n
)
kde_project(
  kde/workspace/plasma-disks
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kconfig
    kcoreaddons
    kdbusaddons
    ki18n
    kio
    knotifications
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
)
kde_project(
  kde/workspace/plasma-desktop
  DEPENDS
    attica
    baloo
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kdbusaddons
    kfilemetadata
    kglobalaccel
    kguiaddons
    ki18n
    kiconthemes
    kio
    kitemmodels
    kitemviews
    kjobwidgets
    knewstuff
    knotifications
    knotifyconfig
    kpackage
    kparts
    krunner
    kservice
    ktextwidgets
    kunitconversion
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    solid
    sonnet
    kirigami-addons
    breeze
    libksysguard
    libplasma
    plasma-activities
    plasma-activities-stats
    plasma-workspace
    powerdevil
    systemsettings
    plasma-integration
    kded
    qqc2-desktop-style
    kactivitymanagerd
)
kde_project(
  kde/workspace/plasma-browser-integration
  DEPENDS
    extra-cmake-modules
    kconfig
    kcoreaddons
    kcrash
    kdbusaddons
    kfilemetadata
    ki18n
    kio
    kjobwidgets
    knotifications
    krunner
    kservice
    kstatusnotifieritem
    purpose
    plasma-activities
    plasma-workspace
)
kde_project(
  kde/workspace/plasma-bigscreen
  DEPENDS
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    ki18n
    kio
    kjobwidgets
    knotifications
    kpackage
    kservice
    ksvg
    kwidgetsaddons
    kwindowsystem
    solid
    kwayland
    libplasma
    plasma-activities
    plasma-activities-stats
    plasma-workspace
    plasma5support
)
kde_project(
  kde/workspace/plank-player
  DEPENDS
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdeclarative
    ki18n
    kio
    kjobwidgets
    knotifications
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
    libplasma
    plasma-workspace
)
kde_project(
  kde/workspace/oxygen-sounds
  DEPENDS
    extra-cmake-modules
)
kde_project(
  kde/workspace/oxygen
  DEPENDS
    extra-cmake-modules
    frameworkintegration
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kguiaddons
    ki18n
    kservice
    kwidgetsaddons
    kwindowsystem
    kdecoration
    libplasma
)
kde_project(
  kde/workspace/ocean-sound-theme
  DEPENDS
    extra-cmake-modules
)
kde_project(
  kde/workspace/kwrited
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kdbusaddons
    ki18n
    knotifications
    kpty
)
kde_project(
  kde/workspace/kwallet-pam
  DEPENDS
    extra-cmake-modules
    kwallet
)
kde_project(
  kde/workspace/ksystemstats
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kio
    solid
    libksysguard
)
kde_project(
  kde/workspace/ksshaskpass
  DEPENDS
    extra-cmake-modules
    kcoreaddons
    kdoctools
    ki18n
    kwallet
    kwidgetsaddons
)
kde_project(
  kde/workspace/kscreen
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kconfig
    kconfigwidgets
    kcoreaddons
    kdbusaddons
    ki18n
    kpackage
    kservice
    ksvg
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    layer-shell-qt
    libkscreen
    libplasma
)
kde_project(
  kde/workspace/kmenuedit
  DEPENDS
    extra-cmake-modules
    kdbusaddons
    kdoctools
    kglobalaccel
    ki18n
    kiconthemes
    kio
    kitemviews
    kwindowsystem
    kxmlgui
    sonnet
)
kde_project(
  kde/workspace/kinfocenter
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kcoreaddons
    ki18n
    kio
    kjobwidgets
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
    plasma-systemmonitor
    systemsettings
    xdg-desktop-portal-kde
)
kde_project(
  kde/workspace/kgamma
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kconfigwidgets
    kdoctools
    ki18n
)
kde_project(
  kde/workspace/kdeplasma-addons
  DEPENDS
    attica
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kglobalaccel
    kholidays
    ki18n
    kio
    kjobwidgets
    knewstuff
    knotifications
    kpackage
    krunner
    kservice
    kunitconversion
    kwidgetsaddons
    kxmlgui
    solid
    sonnet
    kirigami-addons
    libplasma
    plasma-workspace
    plasma5support
    plasma-nano
)
kde_project(
  kde/workspace/kde-gtk-config
  DEPENDS
    extra-cmake-modules
    kauth
    kcodecs
    kcolorscheme
    kconfig
    kcoreaddons
    kdbusaddons
    kguiaddons
    kwidgetsaddons
    kwindowsystem
    kdecoration
)
kde_project(
  kde/workspace/kde-cli-tools
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdesu
    ki18n
    kiconthemes
    kio
    kjobwidgets
    kparts
    kpty
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
)
kde_project(
  kde/workspace/flatpak-kcm
  DEPENDS
    extra-cmake-modules
    kcmutils
    kconfig
    kconfigwidgets
    kcoreaddons
    ki18n
    kitemmodels
)
kde_project(
  kde/workspace/drkonqi
  DEPENDS
    extra-cmake-modules
    kauth
    kcmutils
    kcodecs
    kconfig
    kcoreaddons
    kcrash
    ki18n
    kidletime
    kio
    kitemmodels
    kjobwidgets
    knotifications
    kservice
    kstatusnotifieritem
    kwallet
    kwidgetsaddons
    kwindowsystem
    solid
    syntax-highlighting
)
kde_project(
  kde/workspace/discover
  DEPENDS
    attica
    extra-cmake-modules
    karchive
    kauth
    kcmutils
    kcodecs
    kconfig
    kconfigwidgets
    kcoreaddons
    kcrash
    kdbusaddons
    ki18n
    kidletime
    kio
    knewstuff
    knotifications
    kservice
    kstatusnotifieritem
    kuserfeedback
    kwidgetsaddons
    kwindowsystem
    kxmlgui
    purpose
    kirigami-addons
)
kde_project(
  kde/workspace/breeze-plymouth
  DEPENDS
    extra-cmake-modules
)
kde_project(
  kde/workspace/breeze-gtk
  DEPENDS
    extra-cmake-modules
    breeze
)
kde_project(
  kde/workspace/aura-browser
  DEPENDS
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    kdeclarative
    ki18n
    kio
    kjobwidgets
    knotifications
    kpackage
    kservice
    kwidgetsaddons
    kwindowsystem
    solid
    libplasma
    plasma-workspace
)
kde_project(
  kde/workspace/plasma-remotecontrollers
  DEPENDS
    kcmutils
    kcodecs
    kcompletion
    kconfig
    kconfigwidgets
    kcoreaddons
    ki18n
    kio
    kjobwidgets
    knotifications
    kpackage
    kservice
    kstatusnotifieritem
    kwidgetsaddons
    kwindowsystem
    solid
    libplasma
    plasma-workspace
)
kde_project(
  frameworks/kapidox
  DEPENDS
    extra-cmake-modules
)
