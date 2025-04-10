QT += core quick serialport

INCLUDEPATH += /home/labadmin/umsdk/inc/
LIBS += -L/home/labadmin/umsdk/build/bin/shared/ -lum
QMAKE_RPATHDIR += /home/labadmin/umsdk/build/bin/shared/

SOURCES += \
    main.cpp \
    SerialParserHandler.cpp \
    umsdk_wrapper.cpp \
    SerialParserWorker.cpp \
    PidController.cpp

HEADERS += \
    SerialParserHandler.h \
    umsdk_wrapper.h \
    SerialParserWorker.h \
    PidController.h \
    SerialProtocol.h  # Include shared protocol file

RESOURCES += qml.qrc

QML_IMPORT_PATH = /usr/lib/aarch64-linux-gnu/qt5/qml

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
