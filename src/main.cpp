#include "JSONUtils.h"
#include "WeatherAPI.h"
#include "window.h"

#include <string>
#include <QApplication>
#include <QWidget>
#include <QPushButton>

int main(int argc, char *argv[]) {
    // API int
    std::string* weatherAPI = new std::string; 
    std::string* buffer = new std::string;
    nlohmann::json *weatherData = new nlohmann::json;

    // formatting url for API
    formatWeatherAPI(weatherAPI);
    CallApiArgs callApiArgs = {weatherAPI, buffer};

    // writing data into JSON
    getWeatherData(&callApiArgs);
    parseWeatherData(buffer, weatherData);
    writeWeatherDataIntoJson(weatherData);
    
    QApplication app (argc, argv);

    Window window;
    window.show();
    
    return app.exec();
}

