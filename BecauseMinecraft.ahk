/**
 * Nothing fancy. Create .minecraft/ and download the launcher if necessary.
 */
IfNotExist, .\.minecraft
	FileCreateDir, .\.minecraft
IfNotExist, .\.minecraft\Minecraft.exe
	UrlDownloadToFile, https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.exe, .\.minecraft\Minecraft.exe

Run, %comspec% /c "set APPDATA=%A_WorkingDir%&& start /b javaw -cp .minecraft\Minecraft.exe net.minecraft.LauncherFrame"
