#!/bin/bash

echo "Bem-vindo ao criador de histórias!"

echo "Digite o título da história:"
read titulo

echo "Digite o nome do protagonista:"
read protagonista

echo "Digite a idade do protagonista:"
read idade_protagonista

echo "Digite a aparência do protagonista:"
read aparencia_protagonista

echo "Digite o nome do vilão:"
read vilao

echo "Digite a idade do vilão:"
read idade_vilao

echo "Digite a aparência do vilão:"
read aparencia_vilao

echo "Digite o cenário da história:"
read cenario

echo "Digite uma breve introdução para a história:"
read introducao

echo "Digite o clímax da história:"
read climax

echo "Digite o desfecho da história:"
read desfecho

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
echo "Fim da história."
