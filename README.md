# Windows Wallpaper Script

This powershell script was made as a workaround to OS policies that will try to
set a default wallpaper on startup. This script will set the wallpaper to the
image of your choice on startup.

## Usage

1. Clone this repository to your local machine or just download the `.ps1` and
   `.cmd` file.

   The `.ps1` file is the powershell script that will set the wallpaper. The
   `.cmd` temporarily sets the powershell execution policy to unrestricted to
   allow the script to run. This is necessary because the default execution
   policy is restricted, which will not allow the script to run.

   Make sure that the `.ps1` and `.cmd` files are in the same directory.

2. Open the `.ps1` file in any text editor.

3. On the first line of the `.ps1` file, there is a `$wallpaperPath` variable:

   ```powershell
   $wallpaperPath = ""
   ```

   Fill the string variable with the full path to the image you want to use.

4. Save the now-modified `.ps1` file.

5. Copy the `.cmd` file.

6. Open the run dialogue box by pressing `Win + R` and type `shell:startup` and press enter.

7. Paste the modified `.cmd` file into the startup folder as a shortcut ("paste as
   shortcut" in your right-click context menu).

8. Restart your computer and enjoy your new wallpaper!

## Sources

- [Stack Overflow: How do I run a
  powershell-script-when-the-computer-starts?](https://stackoverflow.com/questions/20575257/how-do-i-run-a-powershell-script-when-the-computer-starts)

- [ChatGPT 😅](https://chat.openai.com/auth/login)
