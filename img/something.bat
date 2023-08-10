@echo off
setlocal enabledelayedexpansion
set count=1

for %%f in (*.jpg) do (
    ren "%%f" "!count!.jpg"
    set /a count+=1
)

echo Semua file JPG telah diubah menjadi angka 1 hingga %count% - 1.
pause
