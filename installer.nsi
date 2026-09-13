; NSIS Installer script for Laive OBS Multi-RTMP (Windows)
Unicode true
RequestExecutionLevel admin

!include "LogicLib.nsh"

!ifndef PLUGIN_SOURCE_DIR
    !define PLUGIN_SOURCE_DIR "release\RelWithDebInfo\obs-multi-rtmp"
!endif

!ifndef PRODUCT_NAME
    !define PRODUCT_NAME "Laive OBS Multi-RTMP"
!endif

!ifndef PRODUCT_VERSION
    !define PRODUCT_VERSION "1.0.0"
!endif

OutFile "obs-multi-rtmp-setup.exe"
Name "${PRODUCT_NAME}"
Caption "${PRODUCT_NAME} ${PRODUCT_VERSION} - Instalador"
Icon "${NSISDIR}\Contrib\Graphics\Icons\win-install.ico"

SetDatablockOptimize on
SetCompress auto
SetCompressor /SOLID lzma

; Diretório padrão de plugins do OBS Studio
Var /Global DefInstDir

Function .onInit
    ReadEnvStr $0 "PROGRAMDATA"
    ${If} $0 == ""
        ReadEnvStr $0 "ALLUSERSPROFILE"
    ${EndIf}
    
    StrCpy $DefInstDir "$0\obs-studio\plugins\obs-multi-rtmp"
    StrCpy $INSTDIR "$DefInstDir"
FunctionEnd

Page directory
Page instfiles

Section "Instalar Plugin"
    SetOutPath "$INSTDIR"
    File /r "${PLUGIN_SOURCE_DIR}\*.*"

    ; Criar desinstalador
    WriteUninstaller "$INSTDIR\uninstall.exe"
    
    ; Registro para Adicionar/Remover Programas do Windows
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\LaiveOBSMultiRTMP" \
                     "DisplayName" "${PRODUCT_NAME}"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\LaiveOBSMultiRTMP" \
                     "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\LaiveOBSMultiRTMP" \
                     "DisplayVersion" "${PRODUCT_VERSION}"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\LaiveOBSMultiRTMP" \
                     "Publisher" "LAIVE AI - Thayron Sabino"
SectionEnd

Section "Uninstall"
    RMDir /r "$INSTDIR"
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\LaiveOBSMultiRTMP"
SectionEnd
