@echo off
title Steganography
echo Desenvolvido por: Lucas (lucas_developer@tutamail.com)
:: MENU DE ABERTURA
echo msgbox "LEMBRETE: Esse aplicativo deve ser executado no mesmo diret�rio que est�o os arquivos que vai usar. Diret�rio atual: %cd% " ,vbinformation, "N�Cؙ" > %temp%\msg.vbs
start %temp%\msg.vbs

:menu
cls
mode 30,11
echo.
echo         Esteganogr�fia
echo ������������������������������
echo   Escolha uma op��o:
echo.
echo   1  INICIAR 2  TUTORIAL
echo ______________________________
set /p op=. op��o 
if "%op%" == "1" goto inicio
if "%op%" == "2" goto tuto
echo msgbox "[%op%] Op��o inv�lida" ,vbcritical, "N�Cؙ" > %temp%\msg.vbs
start %temp%\msg.vbs
goto menu

:tuto
cls
mode 65,48
echo. 
echo                INTRODU��O A ESTEGANOGR�FIA DIGITAL
echo �����������������������������������������������������������������
echo.
echo           Resumidamente, esteganogr�fia � uma t�cnica 
echo.
echo           de segura�a digital para voc� esconder um 
echo.
echo           ou mais arquivos dentro de outros deixando 
echo.
echo            eles protegidos dos curiosos de plant�o.
echo.
echo _________________________________________________________________
ping 127.0.0.1 -n 4 >nul
echo.
echo  Vamos l�!
echo _________________________________________________________________ 
echo.
echo  PASSO 1
echo.
echo  Escolha um arquivo que vai usar como "fachada" vamos esconder
echo.
echo  arquivos importantes atr�s dele.
echo ----------------------------------------------------------------- 
ping 127.0.0.1 -n 4 >nul
echo.
echo  PASSO 2
echo.
echo.
echo  Escolha os arquivos que vai esconder e compacte usando o winrar
echo.
echo  na hora de comprimir os arquivos voc� pode configurar uma senha
echo.
echo  criando assim mais uma camada de segura�a.
echo ----------------------------------------------------------------- 
ping 127.0.0.1 -n 4 >nul
echo.
echo  PASSO 3
echo.
echo  IMPORTANTE: Coloque todos os arquivos junto com esse aplicativo
echo.
echo -----------------------------------------------------------------
echo.
echo              [PRESSIONE QUALQUER TECLA PARA VOLTAR]
pause >nul
goto menu

:: INICIO DO PROGRAMA
:inicio
mode 55,19

:erro1
cls
echo.
echo �������������������������������������������������������
echo               Esteganogr�fia de arquivos 
echo _______________________________________________________
echo   Digite os nomes de arquivos e a extens�o, exemplo: 
echo.
echo      wallpaper.jpg musica.mp3 documentos.rar etc.
echo -------------------------------------------------------
echo.
echo  Nome da arquivo de "fachada"

set /p f=__:

if exist "%f%" (goto cont) else (goto msg)

:msg
echo msgbox "%username% n�o encontrei seu arquivo, voc� ta achando que sou vidente n�? ou executa o aplicativo no diret�rio que se encontram os seus arquivos ou digite o nome do arquivo direito com a extes�o" ,vbexclamation, "N�Cؙ" > %temp%\msg.vbs
start %temp%\msg.vbs
goto erro1

 
:erro2
cls
title Desenvolvido por: Lucas (lucas_developer@tutamail.com)
echo.
echo �������������������������������������������������������
echo               Esteganogr�fia de arquivos 
echo _______________________________________________________
echo   Digite os nomes de arquivos e a extens�o, exemplo: 
echo.
echo      wallpaper.jpg musica.mp3 documentos.rar etc.
echo -------------------------------------------------------
echo.
echo  Nome da arquivo de "fachada"
echo __:%f%

:cont
echo.
echo Nome do pacote .RAR
set /p h=__:

if exist "%h%" (goto copy) else (goto msg2)

:msg2
echo msgbox "%username% n�o encontrei seu arquivo, voc� ta achando que sou vidente n�? ou executa o aplicativo no diret�rio que se encontram os seus arquivos ou digite o nome do arquivo direito com a extes�o" ,vbexclamation, "N�Cؙ" > %temp%\msg.vbs
start %temp%\msg.vbs
goto erro2

:copy
copy /b "%f%" + "%h%" "C�pia_%f%" >nul
echo   
ping 127.0.0.1 -n 3 >nul

echo msgbox "Se voc� forneceu as informa��es corretamente a esteganogr�fia funcionou, j� pode renomear o arquivo [C�pia_%f%]" ,vbinformation, "N�Cؙ" > %temp%\msg.vbs
start %temp%\msg.vbs

:: VOLTAR AO INICIO
goto inicio