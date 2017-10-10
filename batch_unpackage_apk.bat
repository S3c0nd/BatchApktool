@echo off

for %%a in (.) do (
    pushd "%%~a"
    for %%b in ("*.apk") do (
        for /f "delims=" %%c in ('dir /b "%%~b"') do java -jar ShakaApktool_3.0.0-20170503-release.jar d %%c   
    )
    popd
)
pause