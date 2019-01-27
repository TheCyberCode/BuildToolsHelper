@echo off
echo [BT Helper] ----------------------------------- {%date% %time%} This Code Is Made By TheCyberCode ----------------------------------- >> .\cyberlog.txt
echo [BT Helper] --- Cyber's Links --- >> .\cyberlog.txt
echo [BT Helper] Cyber's Spigot: https://www.spigotmc.org/members/thecybercode.358017/ >> .\cyberlog.txt
echo [BT Helper] Cyber's GitHub: https://github.com/thecybercode >> .\cyberlog.txt
echo [BT Helper] Cyber's YouTube: http://www.youtube.com/c/CyberTCC >> .\cyberlog.txt
echo [BT Helper] ----------------------------------- {%date% %time%} This Code Is Made By TheCyberCode -----------------------------------
title [BT Helper] Build Tools Helper by Cyber
echo [BT Helper] --- Cyber's Links ---
echo [BT Helper] Cyber's Spigot: https://www.spigotmc.org/members/thecybercode.358017/
echo [BT Helper] Cyber's GitHub: https://github.com/thecybercode 
echo [BT Helper] Cyber's YouTube: http://www.youtube.com/c/CyberTCC  
echo [BT Helper] Welcome to the build tools extraction helper. >> .\cyberlog.txt
echo [BT Helper] By Cyber >> .\cyberlog.txt
echo [BT Helper] Current Directory: %cd%.  >> .\cyberlog.txt
echo [BT Helper] Welcome to the build tools extraction helper.
echo [BT Helper] By Cyber
echo [BT Helper] Current Directory: %cd%.  
set /p btFile= [BT Helper] Please enter the name of the BuildTools Jar [Do not include file name extension] (example: BuildTools): 
if "%btFile%" equ "" set "btFile=BuildTools"
echo [BT Helper] You selected: %btFile% >> .\cyberlog.txt
echo [BT Helper] Press any key to continue or if this was wrong just close this file. >> .\cyberlog.txt
echo [BT Helper] You selected: %btFile% 
echo [BT Helper] Press any key to continue or if this was wrong just close this file. 
timeout /t 2 /nobreak
set /p btVer= [BT Helper] Enter Version To Extract (example 1.13.2):
if "%btVer%" equ "" set "btVer=latest" 
echo [BT Helper] You selected version: %btVer% >> .\cyberlog.txt
echo [BT Helper] You selected version: %btVer%



:CREATES A CHECK VARIABLE
set lookupS=0
:CHECKS IF THE FOLDER ALREADY EXIST"
IF EXIST "./%btVer%" (set lookupS=1)
:IF CHECK is still 0 which means does not exist. It creates the folder
IF %lookupS%==0 mkdir "./%btVer%/"

set lookupBTFile=0
IF EXIST "./%btVer%/%btFile%" (set lookupBTFile=1) & goto:BTExist
:IF CHECK is still 0 which means does not exist. It creates the folder
IF %lookupBTFile%==0 goto:BTCopy


:BTCopy
echo N | copy "*.jar" "./%btVer%/" 
echo [BT Helper] Copied Jars To Version Directories. >> .\cyberlog.txt
echo [BT Helper] Copied Jars To Version Directories.
goto:BTContinue
:BTExist
echo [BT Helper] BuildTools Already Exists in this folder, Copy Cancelled as not needed.>> .\cyberlog.txt
echo [BT Helper] BuildTools Already Exists in this folder, Copy Cancelled as not needed.
goto:BTContinue
:BTContinue
cd ./%btVer%
echo [BT Helper] Path Changed: %cd%  >> ..\cyberlog.txt
echo [BT Helper] Current Path %cd% >> ..\cyberlog.txt
echo [BT Helper] Path Changed: %cd%
echo [BT Helper] Current Path %cd% 
set /p dSkip= [BT Helper] Type 1 to Skip Decompile if you want to decompile just hit enter: 
if "%dSkip%" equ "1" goto:skip 
if "%dSkip%" equ " " goto:decompile
:decompile 
echo [BT Helper] Press any key to continue or if you did this was wrong just close this file within 30 seconds. >> ..\cyberlog.txt
echo [BT Helper] 30 Seconds Till Starting Decompile Or Hit Enter to start now! >> ..\cyberlog.txt
echo [BT Helper] Press any key to continue or if you did this was wrong just close this file within 30 seconds.
echo [BT Helper] 30 Seconds Till Starting Decompile Or Hit Enter to start now!
timeout /t 30
echo [%time%] Starting BuildTools >> ..\cyberlog.txt
echo [%time%] Starting BuildTools
echo [JAR] java -jar %btFile%.jar --rev %btVer% >> ..\cyberlog.txt
echo [JAR] java -jar %btFile%.jar --rev %btVer%
java -jar %btFile%.jar --rev %btVer%
echo [%time%] Finishing BuildTools >> ..\cyberlog.txt
echo [BT Helper] Completed BuildTools Decompile. >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [BT Helper] >> ..\cyberlog.txt
echo [%time%] Finishing BuildTools
echo [BT Helper] Completed BuildTools Decompile.
echo [BT Helper] 
echo [BT Helper] 
echo [BT Helper] 
echo [BT Helper]
echo [BT Helper]
echo [BT Helper]
echo [BT Helper] 
echo [BT Helper] 
echo [BT Helper]
echo [BT Helper] 
echo [BT Helper]
echo [BT Helper] 
echo [BT Helper]
:skip
echo [BT Helper] Changing Current Directory To Find API  >> ..\cyberlog.txt
echo [BT Helper] Changing Current Directory To Find API
cd .\Spigot\Spigot-API\target"
echo [BT Helper] Path Changed: %cd%  >> ..\..\..\..\cyberlog.txt
echo [BT Helper] Path Changed: %cd%
:NO LONGER USED echo [BT Helper] Opening API Folder.
:NO LONGER USED start .
echo [BT Helper] Completed.  >> ..\..\..\..\cyberlog.txt
echo [BT Helper] Copying API Jar To API Folder >> ..\..\..\..\cyberlog.txt
echo [BT Helper] Completed.
echo [BT Helper] Copying API Jar To API Folder
:CREATES A CHECK VARIABLE
set lookup=0
:CHECKS IF THE FOLDER ALREADY EXIST"
IF EXIST "../../../../API/%btVer%" (set lookup=1)
:IF CHECK is still 0 which means does not exist. It creates the folder
IF %lookup%==0 mkdir "../../../../API/%btVer%/"
set lookupServer=0
IF EXIST "../../../../API/%btVer%/Spigot-Server/" (set lookupServer=1)
:IF CHECK is still 0 which means does not exist. It creates the folder
IF %lookupServer%==0 mkdir "../../../../API/%btVer%/Spigot-Server/"
set lookupAPI=0
IF EXIST "../../../../API/%btVer%/Spigot-API/" (set lookupAPI=1)
:IF CHECK is still 0 which means does not exist. It creates the folder
IF %lookupAPI%==0 mkdir "../../../../API/%btVer%/Spigot-API/"

echo N | copy "./*.jar" "../../../../API/%btVer%/Spigot-API/"  >> ..\..\..\..\cyberlog.txt
echo N | copy "../../Spigot-Server\target\*.jar" "../../../../API/%btVer%/Spigot-Server/"  >> ..\..\..\..\cyberlog.txt
echo [BT Helper] Copied. >> ..\..\..\..\cyberlog.txt
echo [BT Helper] Copied.
cd ../../../../API/%btVer%/
echo [BT Helper] Path Changed: %cd%  >> ..\..\cyberlog.txt
echo [BT Helper] Path Changed: %cd%
start .
echo [BT Helper] Opening Copied Files which are now stored in: [%cd%] >> ..\..\cyberlog.txt
echo [BT Helper] Finished at %time% on %date%.  >> ..\..\cyberlog.txt
echo [BT Helper] Opening Copied Files which are now stored in: [%cd%] 
echo [BT Helper] Finished at %time% on %date%
timeout /t 10
echo ----------------------------------- {%date% %time% - Extractor Finished - Exited} ----------------------------------- >> ..\..\cyberlog.txt
echo ----------------------------------- {%date% %time% - Extractor Finished - Exited} -----------------------------------
exit
