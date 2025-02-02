# Retro Gaming Console

A C++ application that runs on Raspberry Pi OS to manage and launch NES games through an emulator.

## Features

- Lists NES ROM files from a games directory
- Provides a simple console interface for game selection
- Launches selected games using a compatible NES emulator
- Error handling for invalid input and failed game launches

## Prerequisites

- Raspberry Pi OS
- C++ compiler with C++17 support
- CMake (version 3.10 or higher)
- SDL2 library
- NES emulator (e.g., Nestopia)

## Building

1. Install required dependencies:
```bash
sudo apt-get update
sudo apt-get install build-essential cmake libsdl2-dev nestopia
```

2. Clone the repository:
```bash
git clone [repository-url]
cd retro-console
```

3. Create build directory and build the project:
```bash
mkdir build
cd build
cmake ..
make
```

## Usage

1. Create a `games` directory in the same location as the executable:
```bash
mkdir games
```

2. Copy your .nes ROM files into the games directory.

3. Run the application:
```bash
./retro_console
```

4. Use the number keys to select a game to play, or press 0 to exit.

## Project Structure

- `src/main.cpp` - Main application entry point
- `src/ui.h/cpp` - User interface handling
- `src/emulator_launcher.h/cpp` - Emulator integration
- `games/` - Directory for storing ROM files
- `CMakeLists.txt` - CMake build configuration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Note

This project is for educational purposes only. Please ensure you have the legal right to use any ROM files you plan to run with this application.
