#include <QString>
#include <string>
#include <iostream>

std::string removeQuotes(std::string str) {
    str.erase(std::remove(str.begin(), str.end(), '\"'), str.end());
    
    return str;
}

std::string formatTemp(std::string str) {
    double tmpD = 0;

    try {
        tmpD = std::stod(str);
    } catch (const std::invalid_argument& e) {
        std::cerr << "Ошибка: строка не является числом." << std::endl;
    } catch (const std::out_of_range& e) {
        std::cerr << "Ошибка: число выходит за пределы диапазона double." << std::endl;
    }

    int newInt = std::round(tmpD);
    str = std::to_string(newInt);

    return str + "°";
}
