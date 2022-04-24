@echo off
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967884569313439765/rickroll.mp3 -O
set "file=rickroll.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
cscript.exe //nologo sound.vbs
del rickroll.mp3
del Sound.vbs