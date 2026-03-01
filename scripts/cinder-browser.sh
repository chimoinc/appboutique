#!/bin/bash

# --- Configuración de Colores (Estilo Cinder) ---
ROJO='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${ROJO}🚀 Iniciando instalación de Cinder Browser...${NC}"

# 1. Crear directorios necesarios
sudo mkdir -p /opt/cinder-browser
sudo mkdir -p /usr/share/icons/hicolor/scalable/apps

# 2. Simulación de descarga del binario/archivos
# (Aquí es donde bajarías tu ejecutable real)
echo "📦 Descargando componentes desde el repositorio de Chimo..."
# sudo curl -L "URL_DE_TU_BINARIO" -o /opt/cinder-browser/cinder-browser
# sudo chmod +x /opt/cinder-browser/cinder-browser

# 3. Crear el acceso directo (.desktop) para que aparezca en el menú
echo "📝 Creando acceso directo en el sistema..."
cat <<EOF | sudo tee /usr/share/applications/cinder-browser.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Cinder Browser
Comment=Navegador nativo de Chimo Linux
Exec=/opt/cinder-browser/cinder-browser
Icon=cinder-browser
Categories=Network;WebBrowser;
Terminal=false
StartupNotify=true
EOF

# 4. Descargar el ícono (usando el que ya tenés en el repo)
echo "🎨 Instalando íconos..."
sudo curl -sL "https://raw.githubusercontent.com/chimoinc/appboutique/main/icons/cinder.png" -o /usr/share/icons/hicolor/scalable/apps/cinder-browser.png

# 5. Actualizar base de datos de aplicaciones
sudo update-desktop-database

echo -e "${ROJO}✅ Cinder Browser instalado con éxito.${NC}"
echo "Ya podés encontrarlo en tu menú de aplicaciones."
