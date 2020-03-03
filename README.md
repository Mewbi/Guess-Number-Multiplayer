# Guess Number <img src="https://i.imgur.com/XibbDKL.png" align="right">

  Jogo Guess Number feito para se jogar single player ou multiplayer LAN 

### Como jogar
	
  Esse jogo consiste em uma brincadeira de adivinhação. Ela ocorre com dois jogadores, o jogador A escolhe um número de 4 dígitos (0-9) que não se repetem e o jogador B tem que adivinhar. Após o jogador A escolher um número o jogador B tentará adivinhar. Caso o valor inserido por B tenha algum dígito certo, porém em posição errado será acrescentado um valor a variável B, já se tiver algum dígito certo na posição correta, será acrescido um valor a variáver A, dessa forma será passado dicas ao jogador B. A ideia é tentar acertar o número com a menor quantidade de tentativas.


### Exemplo: <img src="https://i.imgur.com/ch6Gz8S.png" align="right" height="400">

- Jogador A escolhe o número 1603
- Jogador B digita o número 1234
- Jogador A retorna 1A1B
- Jogador B digita o número 1452
- Jogador A retorna 1A0B
- Jogador B digita o número 1367
- Jogador A retorna 1A2B
- Jogador B digita o número 1603

	Jogador B vence o jogo.


### Instalação

  Basta baixar os arquivos, descompactá-los, dar permissão de execução `chmod +x main.sh` e rodar o arquivo `main.sh` como root.
  

### Multiplayer

  Para jogar com outra pessoa na LAN é necessário que um hosteia o jogo (por padrão é hosteado na porta 669) e o outro jogador entra na sala informando o IP e a porta do host.
  

### Contato

  Caso tenha alguma dúvida ou sugestão, por favor entrar em contato: < felipefernandesgsc@gmail.com >
