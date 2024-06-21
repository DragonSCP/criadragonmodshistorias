#!/bin/bash

# URL do script Python no GitHub
url_script_python="https://raw.githubusercontent.com/DragonSCP/criadragonmodshistorias/main/scripts/gerahistoria.py"

# Função para gerar histórias usando o script Python
gerar_historia_python() {
    local titulo
    local protagonista
    local idade_protagonista
    local aparencia_protagonista
    local vilao
    local idade_vilao
    local aparencia_vilao
    local cenario
    local introducao
    local climax
    local desfecho
    local dialogo_protagonista
    local dialogo_vilao

    # Executar o script Python e capturar a saída
    read -r -d '' script_python <<EOF
$(curl -sSL "$url_script_python")
EOF

    # Capturar as variáveis geradas pelo script Python
    eval "$script_python"

    # Exibir a história com diálogos
    echo ""
    echo "Aqui está a história de '$titulo':"
    echo ""
    echo "Numa terra distante, chamada $cenario, viveu um valente $protagonista de $idade_protagonista anos, com aparência $aparencia_protagonista."
    echo "$introducao"
    echo "Ele enfrentou muitos desafios, especialmente contra o terrível $vilao de $idade_vilao anos, com aparência $aparencia_vilao."
    echo "$climax"
    echo "No fim, o $protagonista conseguiu triunfar sobre o $vilao e trouxe paz à $cenario."
    echo "$desfecho"
    echo ""
    echo "Diálogo Final:"
    echo "$protagonista: $dialogo_protagonista"
    echo "$vilao: $dialogo_vilao"
    echo ""
}

# Função para adicionar ou modificar personagens e diálogos
adicionar_modificar_personagens() {
    echo ""
    echo "Opções disponíveis:"
    echo "1. Adicionar/Modificar Personagem Principal"
    echo "2. Adicionar Personagem Secundário"
    echo "3. Adicionar Diálogos"
    echo "4. Continuar sem alterações"
    echo ""
    read -r -p "Escolha uma opção: " opcao_personagem
    
    case $opcao_personagem in
        1)
            echo ""
            read -p "Digite o nome do novo personagem principal: " protagonista
            read -p "Digite a idade do novo personagem principal: " idade_protagonista
            read -p "Digite a aparência do novo personagem principal: " aparencia_protagonista
            ;;
        2)
            echo ""
            read -p "Digite o nome do novo personagem secundário: " vilao
            read -p "Digite a idade do novo personagem secundário: " idade_vilao
            read -p "Digite a aparência do novo personagem secundário: " aparencia_vilao
            ;;
        3)
            echo ""
            read -p "Digite o diálogo do protagonista: " dialogo_protagonista
            read -p "Digite o diálogo do vilão: " dialogo_vilao
            ;;
        4)
            echo "Continuando sem alterações..."
            ;;
        *)
            echo "Opção inválida."
            ;;
    esac
}

# Loop principal para permitir ao usuário gerar histórias
while true; do
    clear
    echo "Pressione Enter para gerar uma história aleatória (ou 'sair' para encerrar):"
    read -r opcao
    
    # Verificar se o usuário escolheu sair
    if [ "$opcao" == "sair" ]; then
        break
    fi
    
    # Opção para adicionar ou modificar personagens e diálogos
    adicionar_modificar_personagens
    
    # Gerar e exibir uma história usando o script Python
    gerar_historia_python
    
    # Pausa para permitir a leitura da história
    read -p "Pressione Enter para continuar..."
done

echo "Fim do programa."
