#pragma once

#include <QQmlApplicationEngine>
#include <QApplication>

class Clock : public QObject {
public:
    explicit Clock(QObject* parent = nullptr);

    QString time() const;

    void start(QQmlApplicationEngine* engine);
private:
    QString m_time;
    QTimer* m_timer;
    QQmlApplicationEngine* m_engine;

    void updateTime();
    void setFormattedTime();
};