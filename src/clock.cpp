#include "clock.h"

#include <ctime>
#include <QString>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>
#include <QTimer>

Clock::Clock(QObject* parent) 
    : QObject(parent), m_time("00:00"), m_timer(new QTimer(this)), m_engine(nullptr) {}

QString Clock::time() const {
    return m_time;
}

void Clock::start(QQmlApplicationEngine* engine) {
    m_engine = engine;

    setFormattedTime();

    connect(m_timer, &QTimer::timeout, this, &Clock::updateTime);
    m_timer->start(500);
}

void Clock::updateTime() {
    setFormattedTime();

    if (m_engine) {
        m_engine->rootContext()->setContextProperty("time", m_time);
    }
}

void Clock::setFormattedTime() {
    std::time_t now = std::time(nullptr);
    std::tm* timeInfo = std::localtime(&now);

    char buffer[80];
    std::strftime(buffer, sizeof(buffer), "%H:%M", timeInfo);

    m_time = QString::fromStdString(buffer);
}
