#include "window.h"
#include "WeatherAPI.h"
#include "JSONUtils.h"

#include <QPushButton>
#include <QMessageBox>

Window::Window(QWidget *parent) : QWidget(parent) {
    setFixedSize(750, 376);

    m_button = new QPushButton("Hello World", this);
    m_button->setGeometry(750/2 - 40, 376/2 - 15, 80, 30);

    connect(m_button, &QPushButton::clicked, this, &Window::click);   
}

void Window::click() {
    QMessageBox::information(this, "test123", "ets");
}