BecauseMinecraft
===============

BecauseMinecraft is a dirt simple Minecraft launcher for windows only. This is equivalent to most of the "Minecraft.bat" batch files, except its a little nicer than a .bat.

Instructions
-----------------

0. Make a folder, anywhere on your system. For example, One called `Custom Minecraft` on your desktop.
0. Copy **BecauseMinecraft.exe** into that folder.
0. Use **BecauseMinecraft.exe** to launch and play Minecraft.

The above instructions will cause Minecraft to make and use a .minecraft\ directory inside of your folder (Ex: `Custom Minecraft`), so if you want to install mods or such, you can change the files inside that folder and leave the default Minecraft folder alone.

What It Does
------------

This is the source:
```autohotkey
IfNotExist, .\.minecraft
	FileCreateDir, .\.minecraft
IfNotExist, .\.minecraft\Minecraft.exe
	UrlDownloadToFile, https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.exe, .\.minecraft\Minecraft.exe

Run, %comspec% /c "set APPDATA=%A_WorkingDir%&& start /b javaw -cp .minecraft\Minecraft.exe net.minecraft.LauncherFrame"
```
* It makes a .minecraft\ folder in the its current folder if there isn't one.
* It downloads the Minecraft launcher if it isn't downloaded.
* It starts Minecraft using the .minecraft folder in the current folder instead of C:\Users\{Username}\AppData\Roaming\.
