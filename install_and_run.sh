#!/bin/bash

# Remover o repositório clonado anteriormente, se existir
echo "Removendo o repositório clonado anteriormente, se existir..."
rm -rf criadragonmodshistorias

# Diretório onde o script será instalado
INSTALL_DIR="$HOME/scripts"

# URL do script no GitHub
SCRIPT_URL="https://raw.githubusercontent.com/DragonSCP/criadragonmodshistorias/main/scripts/gerador_de_historias.sh"

echo "Iniciando desinstalação (se aplicável)..."

# Verificar se o script já está instalado
if [ -f "$INSTALL_DIR/gerador_de_historias.sh" ]; then
    echo "Desinstalando o script 'gerador_de_historias.sh'..."

    # Remover script existente
    rm -f "$INSTALL_DIR/gerador_de_historias.sh"

    echo "Script 'gerador_de_historias.sh' desinstalado com sucesso."
else
    echo "Nenhuma versão anterior do script encontrada. Continuando com a instalação..."
fi

echo "Instalando e executando o script 'gerador_de_historias.sh'..."

# Criar diretório se não existir
mkdir -p "$INSTALL_DIR"

# Baixar o script
wget "$SCRIPT_URL" -P "$INSTALL_DIR"

# Tornar o script executável
chmod +x "$INSTALL_DIR/gerador_de_historias.sh"

echo "Script instalado com sucesso."

# Executar o script
echo "Executando o script 'gerador_de_historias.sh'..."
"$INSTALL_DIR/gerador_de_historias.sh"
