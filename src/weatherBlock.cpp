#include "weatherBlock.h"
#include "JSONUtils.h"
#include "strFormatUtils.h"
#include <QQmlContext>

Weather::Weather(QObject* parent) 
    : QObject(parent), m_temp(""), m_timer(new QTimer(this)), m_engine(nullptr) {}

QString Weather::temp() const {
    return m_temp;
}

void Weather::start(QQmlApplicationEngine* engine) {
    m_engine = engine;

    m_temp = QString::fromStdString(formatTemp(getData("main", "temp")));

    connect(m_timer, &QTimer::timeout, this, &Weather::updateTemp);
    m_timer->start(500);
}

void Weather::updateTemp() {
    m_temp = QString::fromStdString(formatTemp(getData("main", "temp")));

    if (m_engine) {
        m_engine->rootContext()->setContextProperty("temp", m_temp);
    }
}