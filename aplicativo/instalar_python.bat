@echo off
echo ================================
echo Instalando Python 3.12
echo ================================

cd %TEMP%

curl -L -o python_installer.exe https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe

start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

echo ================================
echo Atualizando PIP
echo ================================

python -m pip install --upgrade pip

echo ================================
echo Instalando bibliotecas
echo ================================

pip install pyautogui
pip install pyperclip
pip install pandas
pip install selenium
pip install fake-useragent
pip install webdriver-manager
pip install undetected-chromedriver

echo ================================
echo Instalacao finalizada python e seus pacotes
echo ================================

pause