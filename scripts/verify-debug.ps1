param(
    [string]$PackageName = "com.codex.cardisconnecttracker",
    [string]$DeviceAddress = "AABBCCDD",
    [double]$Latitude = 40.4168,
    [double]$Longitude = -3.7038,
    [string]$Address = "DebugParking"
)

$ErrorActionPreference = "Stop"

Write-Host "Installing debug build..."
& .\gradlew.bat installDebug

Write-Host "Clearing old debug state..."
adb shell am broadcast -n "$PackageName/.debug.DebugCommandReceiver" -a "$PackageName.DEBUG_CLEAR_STATE" | Out-Null

Write-Host "Selecting tracked device..."
adb shell am broadcast -n "$PackageName/.debug.DebugCommandReceiver" -a "$PackageName.DEBUG_SELECT_DEVICE" --es device_name "MyCar" --es device_address "$DeviceAddress" | Out-Null

Write-Host "Seeding fake location..."
adb shell am broadcast -n "$PackageName/.debug.DebugCommandReceiver" -a "$PackageName.DEBUG_SET_FAKE_LOCATION" --es mode success --ef latitude $Latitude --ef longitude $Longitude --es address "$Address" | Out-Null

Write-Host "Launching app..."
adb shell monkey -p $PackageName -c android.intent.category.LAUNCHER 1 | Out-Null

Start-Sleep -Seconds 2

Write-Host "Triggering synthetic disconnect..."
adb shell am broadcast -n "$PackageName/.debug.DebugCommandReceiver" -a "$PackageName.DEBUG_SIMULATE_DISCONNECT" --es device_address "$DeviceAddress" | Out-Null

Start-Sleep -Seconds 2

Write-Host "Reading persisted state..."
adb shell run-as $PackageName cat /data/data/$PackageName/shared_prefs/car_disconnect_prefs.xml

Write-Host "Checking service status..."
adb shell dumpsys activity services $PackageName
