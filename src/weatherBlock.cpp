#include "weatherBlock.h"
#include "JSONUtils.h"
#include "strFormatUtils.h"
#include <QQmlContext>

Weather::Weather(QObject* parent) 
    : QObject(parent), m_temp(""), m_description(""), m_timer(new QTimer(this)), m_engine(nullptr) {}

QString Weather::temp() const {
    return m_temp;
}

QString Weather::description() const {
    return m_description;
}

void Weather::start(QQmlApplicationEngine* engine) {
    m_engine = engine;

    m_temp = QString::fromStdString(formatTemp(getData("main", "temp")));
    m_description = QString::fromStdString(getData("weather", "description"));

    connect(m_timer, &QTimer::timeout, this, &Weather::updateTemp);
    m_timer->start(500);
}

void Weather::updateTemp() {
    m_temp = QString::fromStdString(formatTemp(getData("main", "temp")));
    m_description = QString::fromStdString(getData("weather", "description"));

    if (m_engine) {
        m_engine->rootContext()->setContextProperty("temp", m_temp);
        m_engine->rootContext()->setContextProperty("description", m_description);
    }
}