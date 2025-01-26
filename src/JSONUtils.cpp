#include "JSONUtils.h"
#include "strFormatUtils.h"

#include <iostream>
#include <string>
#include <fstream>
#include <nlohmann/json.hpp>  

std::string getData(std::string param1, std::string param2 = "") {
    std::ifstream file("../.data/weatherData.json");
    if (!file.is_open()) {
        std::cerr << "File openning error!" << std::endl;
    }

    nlohmann::json jsonData;
    try {
        file >> jsonData;
    } catch (const nlohmann::json::parse_error& e) {
        std::cerr << "JSON reading error!" << e.what() << std::endl;
        return "JSON PARSE ERROR";
    }
    file.close();

    if (param2.empty()) {
        try {
            return removeQuotes(jsonData[param1].dump());
        } catch (const nlohmann::json::parse_error& e) {
            std::cout << "JSON params not found" << e.what() << std::endl;
            return "JSON PARSE ERROR";
        }
    }

    try {
        if (jsonData[param1].is_array()) {
            return removeQuotes(jsonData[param1][0][param2].dump());
        } else {
            return removeQuotes(jsonData[param1][param2].dump());
        }
    } catch (const nlohmann::json::parse_error& e) {
        std::cout << "JSON params not found" << e.what() << std::endl;
        return "JSON PARSE ERROR";
    }


    return "JSON PARSE ERROR";
}

void parseWeatherData(std::string* data, nlohmann::json* jsonData) {
    *jsonData = nlohmann::json::parse(*data);
}

void writeWeatherDataIntoJson(nlohmann::json* jsonData) {
    std::ofstream file("../.data/weatherData.json");
    if (!file.is_open()) {
        std::cerr << "File openning error!" << std::endl;
    }

    file << std::setw(4) << *jsonData;

    file.close();
}

