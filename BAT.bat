@echo off

:: Set the MSVC compiler environment (adjust this path based on your system)
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x86

:: Change directory to the location of your C++ files
cd /d D:\Z_DEV_OPS\P_SMALL projects\playground_t

:: Create obj folder if it doesn't exist
if not exist obj (
    mkdir obj
)

:: Specify the output file name for the final executable
set OUTPUT_FILE=program.exe

:: Compile the C++ files (H_3.cpp and main_h.cpp)
echo Compiling H_3.cpp and main_h.cpp...
cl /EHsc /Fo"obj\\" /Fe%OUTPUT_FILE% main_h.cpp H_3.cpp

:: Check for compilation errors
if %errorlevel% neq 0 (
    echo Compilation failed. Please check for errors.
    pause
    exit /b
)

:: Run the compiled program
echo Running the program...
%OUTPUT_FILE%

:: Pause to view output
pause
