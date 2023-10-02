$wallpaperPath = ""

Add-Type -AssemblyName System.Windows.Forms

Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

if ($wallpaperPath -eq "") {
    [System.Windows.Forms.MessageBox]::Show("Please set the `$wallpaperPath` variable at the top of the set-wallpaper.ps1 file with the full path to your wallpaper. No wallpaper changes were made.", "Windows Wallpaper Script", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
    exit
}

if (-not (Test-Path $wallpaperPath)) {
    [System.Windows.Forms.MessageBox]::Show("The file path assigned to `$wallpaperPath` is not a valid path. Please set the `$wallpaperPath` variable at the top of the set-wallpaper.ps1 file with the full path to your wallpaper. No wallpaper changes were made.", "Windows Wallpaper Script", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
    exit
}

$SPI_SETDESKWALLPAPER = 0x0014
$SPIF_UPDATEINIFILE = 0x01
$SPIF_SENDCHANGE = 0x02

# Set the wallpaper
$result = [Wallpaper]::SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, $wallpaperPath, $SPIF_UPDATEINIFILE -bor $SPIF_SENDCHANGE)

if ($result -eq 0) {
[System.Windows.Forms.MessageBox]::Show("Failed to set Wallpaper this is a failure in the underlying Windws parameters API. Raise an issue on https://github.com/damonholden/windows-wallpaper-script/issues or try and fix it yourself. If you fix this issue, consider makeing a pull request to https://github.com/damonholden/windows-wallpaper-script/pulls.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
}

if ($result -eq 1) {
    Write-Host "Wallpaper set successfully."
}
