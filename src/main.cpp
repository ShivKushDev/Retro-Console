#include <iostream>
#include <filesystem>
#include <vector>
#include "ui.h"
#include "emulator_launcher.h"

namespace fs = std::filesystem;

// Function to scan for ROM files in the games directory
std::vector<std::string> scanForRoms(const fs::path& gamesDir) {
    std::vector<std::string> roms;
    
    if (!fs::exists(gamesDir)) {
        fs::create_directory(gamesDir);
        return roms;
    }

    for (const auto& entry : fs::directory_iterator(gamesDir)) {
        if (entry.path().extension() == ".nes") {
            roms.push_back(entry.path().filename().string());
        }
    }
    
    return roms;
}

int main() {
    // Initialize UI
    UI ui;
    if (!ui.init()) {
        std::cerr << "Failed to initialize UI" << std::endl;
        return 1;
    }

    // Initialize emulator launcher
    EmulatorLauncher emulator;
    if (!emulator.init("nestopia")) {  // Assuming nestopia is in PATH
        ui.showError("Failed to initialize emulator: " + emulator.getLastError());
        return 1;
    }

    // Scan for ROMs in the games directory
    fs::path gamesDir = fs::current_path() / "games";
    auto roms = scanForRoms(gamesDir);

    if (roms.empty()) {
        ui.showError("No ROM files found in games directory. Please add some .nes files.");
        return 1;
    }

    while (true) {
        // Display game list and get selection
        int selection = ui.displayGameList(roms);
        
        // -1 indicates exit
        if (selection == -1) {
            break;
        }

        // Launch selected game
        fs::path romPath = gamesDir / roms[selection];
        if (!emulator.launchGame(romPath)) {
            ui.showError("Failed to launch game: " + emulator.getLastError());
            continue;
        }
    }

    ui.cleanup();
    return 0;
}
