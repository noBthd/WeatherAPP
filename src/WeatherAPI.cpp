#include "WeatherAPI.h"

#include <iostream>
#include <string.h>
#include <curl/curl.h>
#include <nlohmann/json.hpp>  
#include <fmt/core.h>

#define APIKEY "dc6b6de78fdc1bac0eb88491a728527a"
#define CITY "Moscow"

void getWeatherData(void* _callApiArgs) {
    CallApiArgs* callApiArgs = (CallApiArgs*)_callApiArgs;

    CURL* curl = curl_easy_init();

    if (curl) {
        curl_easy_setopt(curl, CURLOPT_URL, callApiArgs->url->c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, callApiArgs->output_data);
        CURLcode res = curl_easy_perform(curl); 
        if (res != CURLE_OK) {
            std::cerr << "cURL error: " << curl_easy_strerror(res) << std::endl;
        }
        curl_easy_cleanup(curl);
    } else {
        std::cerr << "Failed to initialize cURL." << std::endl;
    }
}

void formatWeatherAPI(std::string* weatherAPI) {
    *weatherAPI = fmt::format("http://api.openweathermap.org/data/2.5/weather?q={0}&appid={1}&units=metric", CITY, APIKEY);
}

size_t writeCallback(void* contents, size_t size, size_t nmemb, std::string* buffer) {
    size_t totalSize = size * nmemb;
    buffer->append(static_cast<char*>(contents), totalSize);
    return totalSize;
}