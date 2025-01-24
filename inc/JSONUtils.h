#pragma once

#include <string>
#include <nlohmann/json.hpp>  

void parseWeatherData(std::string*, nlohmann::json*);
void writeWeatherDataIntoJson(nlohmann::json*);
std::string getData(std::string, std::string);
