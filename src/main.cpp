#include "JSONUtils.h"
#include "WeatherAPI.h"
#include "strFormatUtils.h"

#include <string>
#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

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
    QString temp = QString::fromStdString(formatTemp(getData("main", "temp")));

    engine.rootContext()->setContextProperty("city", city);
    engine.rootContext()->setContextProperty("temp", temp);

    engine.load(QUrl(QStringLiteral("qrc:/ui/main.qml")));

    return app.exec();
}
