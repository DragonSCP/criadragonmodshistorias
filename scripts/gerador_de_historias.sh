#!/bin/bash

# Função para capturar entrada do usuário
capturar_entrada() {
    echo "$1"
    read valor
    echo "$valor"
}

# Função para reinstalar o script
reinstalar_script() {
    echo "Reinstalando o script..."

    # Verificar se o diretório do script existe
    if [ -d "$HOME/scripts" ]; then
        cd "$HOME/scripts"
    else
        echo "Diretório 'scripts' não encontrado. Criando novo diretório..."
        mkdir -p "$HOME/scripts"
        cd "$HOME/scripts"
    fi

    # Remover versão existente, se houver
    rm -f gerador_de_historias.sh

    # Baixar a versão mais recente do GitHub
    wget https://raw.githubusercontent.com/DragonSCP/criadragonmodshistorias/main/scripts/gerador_de_historias.sh -O gerador_de_historias.sh

    # Tornar o script executável
    chmod +x gerador_de_historias.sh

    echo "Script reinstalado com sucesso!"
}

# Verificar se o script já existe localmente
if [ -f "$HOME/scripts/gerador_de_historias.sh" ]; then
    echo "O script já está instalado."
    echo ""
    echo "Deseja reinstalá-lo para obter a versão mais recente? (sim/não)"
    read resposta
    if [ "$resposta" = "sim" ]; then
        reinstalar_script
    else
        echo "Executando a versão atual do script."
    fi
else
    echo "Script não encontrado. Instalando pela primeira vez..."
    reinstalar_script
fi

# Capturar informações para a história
titulo=$(capturar_entrada "Digite o título da história:")
protagonista=$(capturar_entrada "Digite o nome do protagonista:")
idade_protagonista=$(capturar_entrada "Digite a idade do protagonista:")
aparencia_protagonista=$(capturar_entrada "Digite a aparência do protagonista:")
vilao=$(capturar_entrada "Digite o nome do vilão:")
idade_vilao=$(capturar_entrada "Digite a idade do vilão:")
aparencia_vilao=$(capturar_entrada "Digite a aparência do vilão:")
cenario=$(capturar_entrada "Digite o cenário da história:")
introducao=$(capturar_entrada "Digite a introdução da história:")
climax=$(capturar_entrada "Digite o clímax da história:")
desfecho=$(capturar_entrada "Digite o desfecho da história:")

# Número de capítulos desejados
num_capitulos=$(capturar_entrada "Digite o número de capítulos da história:")

# Array para armazenar os capítulos
capitulos=()

# Capturar os capítulos da história
for (( i=1; i<=$num_capitulos; i++ ))
do
    echo ""
    echo "Digite o capítulo $i da história:"
    read capitulo
    capitulos+=("$capitulo")
done

# Mostrar a história por capítulos
echo ""
echo "Aqui está a história de '$titulo':"
echo ""

echo "Numa terra distante, chamada $cenario, viveu um valente $protagonista de $idade_protagonista anos, com aparência $aparencia_protagonista."
echo "$introducao"

# Mostrar cada capítulo
for (( i=0; i<$num_capitulos; i++ ))
do
    echo ""
    echo "Capítulo $(($i + 1)): ${capitulos[$i]}"
    echo ""
done

echo "Ele enfrentou muitos desafios, especialmente contra o terrível $vilao de $idade_vilao anos, com aparência $aparencia_vilao."
echo "$climax"

echo "No fim, o $protagonista conseguiu triunfar sobre o $vilao e trouxe paz à $cenario."
echo "$desfecho"

echo ""
echo "Fim da história."
