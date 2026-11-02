@echo off
title Projeto Vue e Nuxt - Seminario
echo ======================================
echo       PROJETO VUE + NUXT
echo ======================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js nao foi encontrado.
  echo Instale em https://nodejs.org/ e abra este arquivo novamente.
  pause
  exit /b
)

if not exist node_modules (
  echo Instalando o Nuxt pela primeira vez...
  call npm install
  if errorlevel 1 (
    echo Ocorreu um erro na instalacao.
    pause
    exit /b
  )
)

echo.
echo Iniciando o projeto...
echo Quando aparecer o endereco local, abra-o no navegador.
echo Para encerrar, pressione Ctrl + C.
echo.
call npm run dev
pause
