# JOGO DA ADVINHAÇÃO EM BASH.

### Projeto desenvolvido durante as video aulas de `Criação de scripts em Bash` do canal [debxp](https://www.youtube.com/channel/UC8EGrwe_DXSzrCQclf_pv9g) do youtube,
ministrado por Blau Araujo.

## Motivação
Assistir aulas com multiplicadores como Blau Araujo, é muito mais facil o entendimento para pensarmos em novas soluções para o dia-dia,
o aprendizado adquirido nos leva a programar de forma estrutura não apenas colar os comandos mais os entendendo e seguindo clean-code, 
e nos projetarmos para desafios rotineiros.

## 🚀 Tecnologias
- 🔗 [Bash](https://www.gnu.org/software/bash/)

## Sobre o jogo da adivinhação
Programa 100% desenvolvimento em Bash, explicações de ultima saida, expansão de variável, condições encadeadas, variável local e muito mais...


## Funcionalidades
- Adivinhar o numero de 1 à 100

## Fundamentos aprendidos
```bash
# Pesquisando LC_ALL atual...
locale

# Pesquisando operadores...
Help test 

# Criando variavel global...
((sec = RANDOM % 100 -1))

# Macete para Loop infinito usar o ':' dois pontos, significa sempre true...
While :; do
    codigo...
done

# Short Hand para condições IF, exemplo se ultima operação TRUE SUCESSO...
operação && nova_operação

# Short Hand para condições IF, exemplo se ultima operação FALSE NÃO SUCESSO...
operação || retornar

# Retornando controle de execução...
return

# Variaveis pré definidas...
$? # - Armazena o status de saída do último programa executado
$# # - Armazena a quantidade de parâmetros de linha de comandos
$$ # - Armazena o valor PID (Process Identifier) do script em shell que estiver em execução
$@ # - Armazena o valor de todos os parâmetros passados, similar a variável argv presente nas linguagens de programação C e C++
$! # - Armazena o PID do último processo em segundo plano. Isso é útil para acompanhar o processo à medida que o trabalho é realizado
$0, ..., $9 # - Armazena os valores de todos os parâmetros de linha de comando separadamente

# -e Permite que a linha seja editavel
read -e -p "${prompt[0]}"

# Setas "alt + 25" = ↓ e "alt + 24" = ↑

# No shell o += para strings é concatenação...

# Execução da linha sem esperar o enter...
read -sN1

# Alterar variavel recebida para minuscula utilizar "," virgula...
${guess,}

# Alterar variavel recebida para MAIUSCULA utilizar "^" acento circunflexo...
${guess^}
```

### Autor
Feito com ❤️ por Rafael D Silva