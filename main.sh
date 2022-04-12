#!/usr/bin/bash

# Opções -------------------------------

rmin=1
rmax=100

# Mensagens ------------------------------------

# Mensagens do jogo...
msg[0]='Você acertou (em %s tentativas).'
msg[1]='Baixo demais!'
msg[2]='Alto Demais'
msg[3]='Eu disse um número!'
msg[4]="Eu disse entre $rmin e $rmax!"

prompt[0]="Digite um número entre $rmin e $rmax:"
prompt[1]='Tecle algo para continuar...'
prompt[2]='Quer jogar novamente (S/n)?'

# Saída...
msg_quit='Saindo...'

# Titulo do jogo...
str_title='JOGO DA ADIVINHAÇÃO'

# Funções ----------------------------------
# 1 ou + = [0-9]+$
# 0 ou + = [0-9]*$

# Funções de validação... 
is_num() [[ $1 =~ ^[0-9]+$ ]] 
in_range() [[ $1 -ge $rmin && $1 -le $rmax ]]

# Funções de conferência...
is_higher() [[ $1 -gt $sec ]]
is_lower() [[ $1 -lt $sec ]]

check_guess() {
    # Validação se falso retornar o estado de saida como 3
    # que será utilizado no VETOR de mensagens
    is_num $1   || return 3
    in_range $1 || return 4

    # Conferências...
    is_lower $1  && return 1
    is_higher $1 && return 2

    # Acerto!
    return 0
}

get_secret() ((sec = RANDOM % 100 -1))

set_game() {
    count=1
    guesses=''
    get_secret   
}

guess_update() {
    local r go
    case $1 in
        1) r='↓';;
        2) r='↑';; 
        *) r='-';;
    esac
    guesses+="$count:$guess$r \n"
    # incremento...
    ((count++))
    echo "${msg[$1]}"
    read -sN1 -p "${prompt[1]} " go
}

# Main --------------------------------------

main() {

    # Inicia o jogo...
    set_game
    
    while :; do
        clear

        # Imprime titulo...
        printf '%s\n\n' "$str_title"

        # Registro das jogadas...
        [[ "$guesses" ]] && printf '%s\n\n' "$guesses"

        # Ler entrada do jogador...
        read -e -p "${prompt[0]} " guess

        check_guess "$guess" || { guess_update $?; continue; }

        # Chegando aqui, certeza que foi acerto!


        # Mensagem de acerto...
        printf "${msg[0]}\n" $count
    
        # Jogar novamente?
        printf '\n%s ' "${prompt[2]}"
        read -sN1 again
        [[ ${again,} = n ]] && break

        # Chegando aqui, a resposta foi SIM!

        # Reinicia o jogo...
        set_game

    done

    # Mensagem de saida...
    printf '\n\n%s' "$msg_quit"
}

main
