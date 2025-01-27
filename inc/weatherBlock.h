#pragma once

#include <QQmlApplicationEngine>
#include <QApplication>
#include <QTimer>

class Weather : public QObject {
public:
    explicit Weather(QObject* parent = nullptr);

    QString temp() const;
    QString description() const;

    void start(QQmlApplicationEngine*);
private:
    QString m_temp;
    QString m_description;
    QTimer* m_timer;
    QQmlApplicationEngine* m_engine;

    void updateTemp();
};