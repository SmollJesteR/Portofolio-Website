@echo off
setlocal enabledelayedexpansion

echo ============================
echo Converting PNG to WebP...
echo ============================

for %%f in (*.png) do (
    echo Processing: %%f
    cwebp -q 100 "%%f" -o "%%~nf.webp"
    del "%%f"
)

echo ============================
echo Done! All PNG converted to WebP.
echo ============================

pause
