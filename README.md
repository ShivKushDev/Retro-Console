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

1. Place your .nes ROM files in the `games` directory at the project root level (not in the build directory).

2. Run the application:
```bash
./build/retro_console
```

4. Use the number keys to select a game to play, or press 0 to exit.

## Troubleshooting

### CMake Path Mismatch Error

If you encounter a CMake error about path mismatch or different source directories, follow these steps to resolve it:

1. Remove the existing build directory:
```bash
rm -rf build
```

2. Create a new build directory and run CMake with the explicit source path:
```bash
mkdir build
cd build
cmake -S /path/to/your/project .
make
```

Replace `/path/to/your/project` with the actual path to the project directory. This ensures CMake uses the correct source directory path.

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
