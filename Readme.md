# JOGO ADVINHA EM BASH.

## Código exibido pelo canal do YOUTUBE `debxp`

# Verificar o LC_ALL
locale

# operadores
Help test 

# variavel global
((sec = RANDOM % 100 -1))

# Loop infinito usar o ':' dois pontos
While :; do
    codigo...
done

# Se ultima operação TRUE SUCESSO
operação && nova_operação

# Se ultima operação FALSE NÃO SUCESSO
operação || retornar

# Para devolver o controle de execução
return

# Estado de saído da ultima operação
$?

# -e Permite que a linha seja editavel
read -e -p "${prompt[0]}"

# Setas "alt + 25" = ↓ e "alt + 24" = ↑

# no shell o += é concatenação de string e não incremento numerico

# execução da linha sem esperar o enter
read -sN1

# Variavel recebida minuscula utilizar "," virgula
${guess,}

# Variavel recebida MAIUSCULA utilizar "^" virgula
${guess^}