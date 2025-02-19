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
    void getTextId();
    void setData();

private:
    CallApiArgs* m_args;
    nlohmann::json* m_json;
    std::string* m_weatherAPI;
    QString m_temp;
    QString m_description;
    QTimer* m_timer;
    QQmlApplicationEngine* m_engine;
    QObjectList* m_data;
    QObject* m_preasure;
    QObject* m_tempmin;
    QObject* m_tempmax;
    QObject* m_feelslike;
    
    void updateTemp();
};