@echo off
setlocal

:: Проверка, передан ли файл
if "%~1"=="" (
    echo Перетащи .ogg файл на этот бат-файл
    pause
    exit /b
)

:: Полный путь к входному файлу
set "input=%~1"
:: Имя файла без расширения
set "filename=%~n1"
:: Папка
set "folder=%~dp1"
:: Выходной путь
set "output=%folder%%filename%_formatted.ogg"

:: Выполняем перекодировку через ffmpeg
ffmpeg -i "%input%" -ar 32000 -ac 1 -c:a libvorbis -q:a 3 -map_metadata -1 -vn "%output%"

echo Готово: %output%
pause