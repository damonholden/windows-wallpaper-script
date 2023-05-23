# Windows Wallpaper Script

This script will change your wallpaper to a specified image of your choice. This
powershell script was made as a workaround to OS policies that will try to set a
default wallpaper on startup.

## Usage

1. Clone this repository to your local machine or just download the `.ps1` and
   `.cmd` file.

2. Open the `.ps1` file in any text editor.

3. On the first line of the `.ps1` file, there is a `$wallpaperPath` variable
   with a placeholder value which should look something like this:

   ```powershell
   $wallpaperPath = "C:\path\to\your\wallpaper.jpg"
   ```

   Replace the placeholder value with the full path to the image you want to use
   (still as a string).

4. Save the now-modified `.ps1` file.

5. Open the `.cmd` file and replace the placeholder value on the second line with the full path to
   the `.ps1` file. The line should look something like this:

   ```cmd
   PowerShell %USERPROFILE%\Desktop\script.ps1
   ```

6. Save the now-modified `.cmd` file.

7. Copy the `.cmd` file.

8. Open the run dialogue box by pressing `Win + R` and type `shell:startup` and press enter.

9. Paste the modified `.cmd` file into the startup folder as a shortcut ("paste as
   shortcut" in your right-click context menu).

10. Restart your computer and enjoy your new wallpaper!
