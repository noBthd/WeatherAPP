#pragma once

#include <string>

void formatWeatherAPI(std::string* weatherAPI);
void getWeatherData(void* callApiArgs);
size_t writeCallback(void* contents, size_t size, size_t nmemb, std::string* buffer);

typedef struct {
    std::string* url;
    std::string* output_data;
} CallApiArgs;
