#!/bin/bash

# Função para exibir informações sobre o protagonista
exibir_info_protagonista() {
    clear
    echo "Nome do protagonista: $protagonista"
    echo "Idade do protagonista: $idade_protagonista"
    echo "Aparência do protagonista: $aparencia_protagonista"
    echo "-----------------------------"
    echo "Habilidades e Poderes:"
    echo "-----------------------------"
    echo "1. Nenhuma habilidade inicialmente."
    echo ""
}

# Função para adquirir habilidades conforme as missões são completadas
adquirir_habilidade() {
    local missao=$1

    case $missao in
        1)
            habilidade="Percepção Aguda"
            raridade="Comum"
            ranking="D"
            descricao="Habilidade básica que aumenta a percepção e intuição do usuário."
            ;;
        2)
            habilidade="Força Interior"
            raridade="Intermediária"
            ranking="C"
            descricao="Habilidade que amplia os limites físicos ou mentais do usuário."
            ;;
        3)
            habilidade="Controle Elemental"
            raridade="Avançada"
            ranking="B"
            descricao="Habilidade avançada que confere ao usuário controle sobre as forças da natureza."
            ;;
        4)
            habilidade="Divindade Temporária"
            raridade="Lendária"
            ranking="S"
            descricao="Habilidade lendária que concede poderes quase divinos ao usuário."
            ;;
        *)
            echo "Missão inválida."
            return
            ;;
    esac

    echo ""
    echo "Parabéns! Você completou a Missão $missao:"
    echo "- $descricao"
    echo ""
    echo "Você adquiriu a habilidade: $habilidade (Raridade: $raridade, Ranking: $ranking)"
    echo ""

    # Atualizar as variáveis globais de habilidade do protagonista
    habilidade_adquirida=true
    habilidade_atual="$habilidade"
    raridade_habilidade="$raridade"
    ranking_habilidade="$ranking"
    descricao_habilidade="$descricao"
}

# Função para simular a jornada do protagonista
jornada_protagonista() {
    exibir_info_protagonista

    # Definir variáveis do protagonista (pode ser ajustado conforme necessário)
    protagonista="Alice"
    idade_protagonista="25"
    aparencia_protagonista="Jovem e destemida"
    
    habilidade_adquirida=false
    habilidade_atual=""
    raridade_habilidade=""
    ranking_habilidade=""
    descricao_habilidade=""

    # Loop para simular a jornada do protagonista e aquisição de habilidades
    while true; do
        echo "Escolha uma missão para o protagonista completar (1 a 4) ou digite 'sair' para encerrar:"
        read missao
        
        if [[ "$missao" == "sair" ]]; then
            break
        fi
        
        if (( $missao < 1 || $missao > 4 )); then
            echo "Missão inválida. Escolha uma missão de 1 a 4."
            continue
        fi

        adquirir_habilidade "$missao"

        # Exibir informações atualizadas do protagonista
        exibir_info_protagonista
    done

    echo "Fim da jornada do protagonista."
}

# Iniciar a jornada do protagonista
jornada_protagonista
