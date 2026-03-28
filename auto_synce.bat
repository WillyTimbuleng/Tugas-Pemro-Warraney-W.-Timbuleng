@echo off
:loop
cls
echo ===========================================
echo    GIT AUTO-PUSH AKTIF (Sedang Memantau)
echo ===========================================
echo Waktu Terakhir: %date% %time%
echo.

git add .
git commit -m "Auto-update tugas Willy: %date% %time%"
git push origin main

echo.
echo -------------------------------------------
echo Selesai! Menunggu 5 menit untuk sync lagi...
echo -------------------------------------------
timeout /t 300
goto loop