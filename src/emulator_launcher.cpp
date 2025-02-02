#include "emulator_launcher.h"
#include <stdexcept>
#include <cstdlib>

EmulatorLauncher::EmulatorLauncher() : initialized(false) {}

EmulatorLauncher::~EmulatorLauncher() {}

bool EmulatorLauncher::init(const std::string& path) {
    // Check if emulator exists in PATH or use provided path
    emulatorPath = path;
    
    // Basic validation - in a real implementation, we would verify the emulator
    // exists and is executable
    if (emulatorPath.empty()) {
        setError("No emulator path specified");
        return false;
    }
    
    initialized = true;
    return true;
}

bool EmulatorLauncher::launchGame(const std::filesystem::path& romPath) {
    if (!initialized) {
        setError("Emulator not initialized");
        return false;
    }
    
    if (!validateRom(romPath)) {
        return false;
    }
    
    // Construct command to launch emulator with ROM
    std::string command;
    #ifdef _WIN32
        command = "start \"\" \"" + emulatorPath + "\" \"" + romPath.string() + "\"";
    #else
        command = "\"" + emulatorPath + "\" \"" + romPath.string() + "\" &";
    #endif
    
    // Launch the emulator
    int result = std::system(command.c_str());
    if (result != 0) {
        setError("Failed to launch emulator");
        return false;
    }
    
    return true;
}

bool EmulatorLauncher::validateRom(const std::filesystem::path& romPath) {
    if (!std::filesystem::exists(romPath)) {
        setError("ROM file does not exist: " + romPath.string());
        return false;
    }
    
    // Check file extension
    if (romPath.extension() != ".nes") {
        setError("Invalid ROM file type: " + romPath.string());
        return false;
    }
    
    return true;
}

std::string EmulatorLauncher::getLastError() const {
    return lastError;
}

void EmulatorLauncher::setError(const std::string& error) {
    lastError = error;
}
