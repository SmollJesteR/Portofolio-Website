@echo off
setlocal enabledelayedexpansion

echo ============================
echo Converting JPG to WebP...
echo ============================

for %%f in (*.jpg) do (
    echo Processing: %%f
    cwebp -q 100 "%%f" -o "%%~nf.webp"
    del "%%f"

)

for %%f in (*.jpeg) do (
    echo Processing: %%f
    cwebp -q 100 "%%f" -o "%%~nf.webp"
)

echo ============================
echo Done! All JPG converted to WebP.
echo ============================

pause
