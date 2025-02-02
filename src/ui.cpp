#include "ui.h"
#include <iostream>
#include <limits>
#include <cstdlib>

UI::UI() : initialized(false) {}

UI::~UI() {
    cleanup();
}

bool UI::init() {
    initialized = true;
    return true;
}

void UI::cleanup() {
    initialized = false;
}

int UI::displayGameList(const std::vector<std::string>& games) {
    if (!initialized || games.empty()) {
        return -1;
    }

    while (true) {
        clearScreen();
        std::cout << "=== Retro Gaming Console ===" << std::endl;
        std::cout << "Available Games:" << std::endl;
        
        // Display games with numbers
        for (size_t i = 0; i < games.size(); ++i) {
            std::cout << i + 1 << ". " << games[i] << std::endl;
        }
        
        std::cout << "\n0. Exit" << std::endl;
        std::cout << "\nEnter game number to play: ";
        
        int choice = getNumericInput(0, games.size());
        
        if (choice == 0) {
            return -1;  // Exit
        }
        
        return choice - 1;  // Convert to zero-based index
    }
}

void UI::showError(const std::string& message) {
    std::cerr << "\nError: " << message << std::endl;
    std::cout << "Press Enter to continue...";
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}

int UI::getNumericInput(int min, int max) {
    int choice;
    while (true) {
        if (std::cin >> choice) {
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            if (choice >= min && choice <= max) {
                return choice;
            }
        } else {
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }
        std::cout << "Please enter a number between " << min << " and " << max << ": ";
    }
}

void UI::clearScreen() {
    #ifdef _WIN32
        system("cls");
    #else
        system("clear");
    #endif
}
