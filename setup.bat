@echo off

:: This is a setup script for the Python project

echo Setting up the Python environment...

:: Install dependencies
if exist %SystemRoot%\System32\pip.exe (
    echo Installing Python dependencies...
    pip install -r requirements.txt
) else (
    echo Error: pip not found. Please install Python and pip first.
    exit /b 1
)

:: Run the main Python script
echo Running main.py...
python main.py

echo Setup complete! You're ready to start working on your Python project.