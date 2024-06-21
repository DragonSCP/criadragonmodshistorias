#!/bin/bash

echo "Bem-vindo ao criador de histÃ³rias!"

echo "Digite o tÃ­tulo da histÃ³ria:"
read titulo

echo "Digite o nome do protagonista:"
read protagonista

echo "Digite a idade do protagonista:"
read idade_protagonista

echo "Digite a aparÃªncia do protagonista:"
read aparencia_protagonista

echo "Digite o nome do vilÃ£o:"
read vilao

echo "Digite a idade do vilÃ£o:"
read idade_vilao

echo "Digite a aparÃªncia do vilÃ£o:"
read aparencia_vilao

echo "Digite o cenÃ¡rio da histÃ³ria:"
read cenario

echo "Digite uma breve introduÃ§Ã£o para a histÃ³ria:"
read introducao

echo "Digite o clÃ­max da histÃ³ria:"
read climax

echo "Digite o desfecho da histÃ³ria:"
read desfecho

echo ""
echo "Aqui estÃ¡ a histÃ³ria de '$titulo':"
echo ""

echo "Numa terra distante, chamada $cenario, viveu um valente $protagonista de $idade_protagonista anos, com aparÃªncia $aparencia_protagonista."
echo "$introducao"

echo "Ele enfrentou muitos desafios, especialmente contra o terrÃ­vel $vilao de $idade_vilao anos, com aparÃªncia $aparencia_vilao."
echo "$climax"

echo "No fim, o $protagonista conseguiu triunfar sobre o $vilao e trouxe paz Ã  $cenario."
echo "$desfecho"

echo ""
echo "Fim da histÃ³ria."
