@ECHO off
md "%appdata%/.minecraft/resourcepacks/FLRT"
move "%appdata%/.minecraft/resourcepacks/��b��lFLRT-Resource ��4��lvAlpha/update_toolbox"  "%appdata%/.minecraft/resourcepacks/FLRT"
timeout /nobreak 2 
start "%appdata%/.minecraft/resourcepacks/��b��lFLRT-Resource ��4��lvAlpha/FLRT/update_toolbox/version/"

start "%appdata%/.minecraft/resourcepacks/FLRT/update_toolbox/temp/main_deleter.bat"
exit
