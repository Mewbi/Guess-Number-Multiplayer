#!/usr/bin/env bash

#---------------Cabeçalho-------------------
#  Autor: Felipe Fernandes
#         <felipefernandesgsc@gmail.com>
#
#  Programa: guess-number
#
#  Objetivo: Jogar o game guess-number con-
# tra máquina ou multiplayer via LAN.
#-------------------------------------------

#---------------Pré-Requisito---------------
#nc
if [ ! -n "$(which nc)" ]; then
   echo -e "Netcat não encontrado no sistema...\nInstale-o para jogar multiplayer!"
   read
fi

#root
if [[ "$(whoami)" != "root" ]]; then
	echo -e "O programa não foi iniciado no modo root ou sudo...\nFunção multiplayer pode não funcionar!"
	read
fi
#-------------------------------------------

#-----------VARIÁVEIS E FUNÇÕES-------------
source functions
port="669"
#-------------------------------------------

#-------------------MAIN--------------------
while : ; do
	_HEADER
	read -p "Digite uma opção: " o

	case ${o,,} in

		-h|--help )
			_HELP ;;

		-m|--manual )
			_MANUAL ;;

		-p|--play )
			_PLAY_SINGLE ;;

		-r|--host )
			_HOST ${port} ;;

		-j|--join)
			read -p "Informe o IP do host: " ip
			read -p "Digite a porta (deixa vázio para usar porta padrão): " p
			_CLIENT ${ip} ${p:=${port}} ;;

		-e|--exit)
			exit ;;

		*)
		echo -e "\nOpção inválida!\n"
		read
		;;

	esac
done
#-------------------------------------------