#include "weatherBlock.h"
#include "JSONUtils.h"
#include "strFormatUtils.h"
#include <QQmlContext>
#include <string>


Weather::Weather(QObject* parent) 
    : QObject(parent), m_temp(""), m_description(""), m_timer(new QTimer(this)), m_engine(nullptr),
    m_args(nullptr), m_json(nullptr), m_weatherAPI(nullptr),
    m_data(nullptr), m_tempmax(nullptr), m_tempmin(nullptr), m_feelslike(nullptr), m_preasure(nullptr) { }

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

void Weather::getTextId() {
    QObject* root_context = m_engine->rootObjects().first();
    
    // for (int i = 1; i < 5; i++) {
    //     std::string aName = "textId" + std::to_string(i);
    //     QObject *text = rootObject->findChild<QObject*>(aName);
    //     m_data->push_back(text);
    // }

    QObject* min = root_context->findChild<QObject*>("infoText1");
    QObject* max = root_context->findChild<QObject*>("infoText2");
    QObject* feelslike = root_context->findChild<QObject*>("infoText3");
    QObject* preasure = root_context->findChild<QObject*>("infoText4");

    m_tempmin = min;
    m_tempmax = max;
    m_feelslike = feelslike;
    m_preasure = preasure;
}

void Weather::setData() {
    if (m_tempmin) m_tempmin->setProperty("text", QString::fromStdString(getData("main", "temp_min")));
    if (m_tempmax) m_tempmax->setProperty("text", QString::fromStdString(getData("main", "temp_max")));
    if (m_feelslike) m_feelslike->setProperty("text", QString::fromStdString(getData("main", "feels_like")));
    if (m_preasure) m_preasure->setProperty("text", QString::fromStdString(getData("main", "pressure")));
}