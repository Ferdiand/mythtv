include ( ../settings.pro )

QMAKE_STRIP = echo

TEMPLATE = app
CONFIG -= moc qt

QMAKE_COPY_DIR = sh ./cpsvndir
win32:QMAKE_COPY_DIR = sh ./cpsimple

themes.path = $${PREFIX}/share/mythtv/themes/
themes.files = defaultosd default default-wide classic DVR
themes.files += isthmus Terra defaultmenu mediacentermenu
themes.files += MythCenter MythCenter-wide

fonts.path = $${PREFIX}/share/mythtv
fonts.files = FreeSans.ttf FreeSansBold.ttf FreeMono.ttf

INSTALLS += themes fonts

# Input
SOURCES += dummy.c
