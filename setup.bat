@echo off

:: This is a setup script for the Python project

echo Setting up the Python environment...

:: Add Python Scripts directory to PATH
set PYTHON_SCRIPTS_DIR=C:\Users\YourUsername\AppData\Local\Programs\Python\Python<version>\Scripts
if exist %PYTHON_SCRIPTS_DIR% (
    setx PATH "%PATH%;%PYTHON_SCRIPTS_DIR%" /M
    echo Added Python Scripts directory to PATH.
) else (
    echo Error: Python Scripts directory not found. Make sure to update the script with the correct path.
    exit /b 1
)

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
