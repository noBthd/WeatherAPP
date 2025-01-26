#include "JSONUtils.h"
#include "WeatherAPI.h"
#include "strFormatUtils.h"
#include "clock.h"
#include "weatherBlock.h"

#include <string>
#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>
#include <QTimer>


int main(int argc, char *argv[]) {
    std::string* weatherAPI = new std::string; 
    std::string* buffer = new std::string;
    nlohmann::json *weatherData = new nlohmann::json;

    formatWeatherAPI(weatherAPI);
    CallApiArgs callApiArgs = {weatherAPI, buffer};

    getWeatherData(&callApiArgs);
    parseWeatherData(buffer, weatherData);
    writeWeatherDataIntoJson(weatherData);
    
    QApplication app (argc, argv);
    QQmlApplicationEngine engine;

    QString city = QString::fromStdString(getData("name", ""));
    engine.rootContext()->setContextProperty("city", city);

    //! first thread
    Weather weather;
    engine.rootContext()->setContextProperty("weather", &weather);
    weather.start(&engine);
    
    //! second thread
    Clock clock;
    engine.rootContext()->setContextProperty("clock", &clock);
    clock.start(&engine);

    engine.load(QUrl(QStringLiteral("qrc:/ui/main.qml")));

    return app.exec();
}
