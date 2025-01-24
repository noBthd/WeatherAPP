#pragma  once

#include <QWidget>
#include <QtQuick/QQuickItem>

class QPushButton;

class Window : public QWidget {
    // Q_OBJECT
    // QML_ELEMENT
public:
    explicit Window(QWidget *parent = 0);

public slots:
    void click();

private:
    QPushButton *m_button;
};