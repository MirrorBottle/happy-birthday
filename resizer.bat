@echo off
setlocal

set "sourceFolder=%~dp0img"
set "targetFolder=%~dp0resized"
set "maxWidth=800"   REM Set your desired maximum width
set "maxHeight=600"  REM Set your desired maximum height

for %%f in ("%sourceFolder%\*.jpg") do (
    magick "%%f" -resize %maxWidth%x%maxHeight% "%targetFolder%\%%~nxf"
)

echo All .jpg files resized.
pause