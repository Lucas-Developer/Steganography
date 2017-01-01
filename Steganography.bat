@echo off
title Steganography
echo Desenvolvido por: Lucas (lucas_developer@tutamail.com)
:: MENU DE ABERTURA
echo msgbox "LEMBRETE: Esse aplicativo deve ser executado no mesmo diretório que estão os arquivos que vai usar. Diretório atual: %cd% " ,vbinformation, "N§CØ™" > %temp%\msg.vbs
start %temp%\msg.vbs

:menu
cls
mode 30,11
echo.
echo         Esteganogr fia
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo   Escolha uma op‡Æo:
echo.
echo   1  INICIAR 2  TUTORIAL
echo ______________________________
set /p op=. op‡Æo 
if "%op%" == "1" goto inicio
if "%op%" == "2" goto tuto
echo msgbox "[%op%] Opção inválida" ,vbcritical, "N§CØ™" > %temp%\msg.vbs
start %temp%\msg.vbs
goto menu

:tuto
cls
mode 65,48
echo. 
echo                INTRODU€ÇO A ESTEGANOGRµFIA DIGITAL
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo.
echo           Resumidamente, esteganogr fia ‚ uma t‚cnica 
echo.
echo           de segura‡a digital para vocˆ esconder um 
echo.
echo           ou mais arquivos dentro de outros deixando 
echo.
echo            eles protegidos dos curiosos de plantÆo.
echo.
echo _________________________________________________________________
ping 127.0.0.1 -n 4 >nul
echo.
echo  Vamos l !
echo _________________________________________________________________ 
echo.
echo  PASSO 1
echo.
echo  Escolha um arquivo que vai usar como "fachada" vamos esconder
echo.
echo  arquivos importantes atr s dele.
echo ----------------------------------------------------------------- 
ping 127.0.0.1 -n 4 >nul
echo.
echo  PASSO 2
echo.
echo.
echo  Escolha os arquivos que vai esconder e compacte usando o winrar
echo.
echo  na hora de comprimir os arquivos vocˆ pode configurar uma senha
echo.
echo  criando assim mais uma camada de segura‡a.
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
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo               Esteganogr fia de arquivos 
echo _______________________________________________________
echo   Digite os nomes de arquivos e a extensÆo, exemplo: 
echo.
echo      wallpaper.jpg musica.mp3 documentos.rar etc.
echo -------------------------------------------------------
echo.
echo  Nome da arquivo de "fachada"

set /p f=__:

if exist "%f%" (goto cont) else (goto msg)

:msg
echo msgbox "%username% não encontrei seu arquivo, você ta achando que sou vidente né? ou executa o aplicativo no diretório que se encontram os seus arquivos ou digite o nome do arquivo direito com a extesão" ,vbexclamation, "N§CØ™" > %temp%\msg.vbs
start %temp%\msg.vbs
goto erro1

 
:erro2
cls
title Desenvolvido por: Lucas (lucas_developer@tutamail.com)
echo.
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo               Esteganogr fia de arquivos 
echo _______________________________________________________
echo   Digite os nomes de arquivos e a extensÆo, exemplo: 
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
echo msgbox "%username% não encontrei seu arquivo, você ta achando que sou vidente né? ou executa o aplicativo no diretório que se encontram os seus arquivos ou digite o nome do arquivo direito com a extesão" ,vbexclamation, "N§CØ™" > %temp%\msg.vbs
start %temp%\msg.vbs
goto erro2

:copy
copy /b "%f%" + "%h%" "C¢pia_%f%" >nul
echo   
ping 127.0.0.1 -n 3 >nul

echo msgbox "Se você forneceu as informações corretamente a esteganográfia funcionou, já pode renomear o arquivo [Cópia_%f%]" ,vbinformation, "N§CØ™" > %temp%\msg.vbs
start %temp%\msg.vbs

:: VOLTAR AO INICIO
goto inicio