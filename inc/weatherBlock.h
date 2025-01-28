#pragma once

#include "WeatherAPI.h"
#include <QQmlApplicationEngine>
#include <QApplication>
#include <QTimer>
#include <nlohmann/json.hpp>
#include <string>

class Weather : public QObject {
public:
    explicit Weather(QObject* parent = nullptr);

    QString temp() const;
    QString description() const;

    void start(QQmlApplicationEngine*);

private:
    CallApiArgs* m_args;
    nlohmann::json* m_json;
    std::string* m_weatherAPI;
    QString m_temp;
    QString m_description;
    QTimer* m_timer;
    QQmlApplicationEngine* m_engine;

    void updateTemp();
};