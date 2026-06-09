/****************************************************************************
** Meta object code from reading C++ file 'main_call_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.15)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../opencv_contrib-4.8.1/modules/cvv/src/gui/main_call_window.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_call_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.15. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_cvv__gui__MainCallWindow_t {
    QByteArrayData data[1];
    char stringdata0[25];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_cvv__gui__MainCallWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_cvv__gui__MainCallWindow_t qt_meta_stringdata_cvv__gui__MainCallWindow = {
    {
QT_MOC_LITERAL(0, 0, 24) // "cvv::gui::MainCallWindow"

    },
    "cvv::gui::MainCallWindow"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_cvv__gui__MainCallWindow[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

void cvv::gui::MainCallWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject cvv::gui::MainCallWindow::staticMetaObject = { {
    QMetaObject::SuperData::link<CallWindow::staticMetaObject>(),
    qt_meta_stringdata_cvv__gui__MainCallWindow.data,
    qt_meta_data_cvv__gui__MainCallWindow,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *cvv::gui::MainCallWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *cvv::gui::MainCallWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_cvv__gui__MainCallWindow.stringdata0))
        return static_cast<void*>(this);
    return CallWindow::qt_metacast(_clname);
}

int cvv::gui::MainCallWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = CallWindow::qt_metacall(_c, _id, _a);
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
