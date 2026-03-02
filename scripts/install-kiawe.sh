#!/bin/bash
(
echo "10" ; echo "# Preparando entorno para Kiawe AI..." ; sleep 1
echo "40" ; echo "# Instalando dependencias de voz y Python..."
sudo apt update && sudo apt install -y python3-pyqt6 python3-requests > /dev/null

echo "70" ; echo "# Configurando el asistente en el sistema..."
# Aquí descargarías tu ejecutable de Kiawe
# sudo curl -L "URL_DE_KIAWE" -o /usr/bin/kiawe-ai && sudo chmod +x /usr/bin/kiawe-ai

echo "90" ; echo "# Registrando acceso directo (Meta + K)..."
# (Opcional: aquí podrías configurar el atajo de teclado de KDE/LXQt)

echo "100" ; echo "# ¡Kiawe AI está listo para escucharte!"
) | zenity --progress --title="Instalador de Kiawe" --auto-close --no-cancel

notify-send "Kiawe AI" "Asistente instalado. Presioná Meta+K para hablar." --icon=kiawe-ai
