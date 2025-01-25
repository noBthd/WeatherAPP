#include "JSONUtils.h"
#include "WeatherAPI.h"
#include "window.h"

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

    engine.rootContext()->setContextProperty("city", city);

    engine.load(QUrl::fromLocalFile("/Users/egorkirichenko/Projects/C++/WeatherAPP/ui/components/main.qml"));
    // engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    // MainWindow win;
    // win.show();

    return app.exec();
}
