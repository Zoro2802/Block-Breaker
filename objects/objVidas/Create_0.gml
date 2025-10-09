/*
Dentro jogo, nós queremos que a cada vez que eu perder uma vida, mostre
para o usuário, em outros, poderiamos apenas mostrar a quantidade de vidas
Mas para este jogo, queremos que mostre a quantidede de vida através de
bolinhas cheias ou não
Ou seja, caso eu tenha 2 vidas, dentro do jogo, e a segunda e a terceira bolinha devem aparecer apagadas
Mas comos vamos saber qual bolinha apagar?
Para isso, teremos que usar um maio para identifique as bolinhas
pelo ID, ficaria dificil, pois teriamos que mudar o ID manualmente
Então vamos criar uma váriavel para isto
No caso,a primeira bolinha tem que receber no identificador 1
A segunda deve receber 2
E a terceira 3
Porém, se fizermos apenas variável interna, isto nunca funcionaria
Pois todas teriam o mesmo ID
Então teriamos que criar uma maneira externa para criar as variáveis
E esta maneira, será através de uma variável global
Faremos isto, pois, teriamos acesso ao valor referente a quantidade de vida
de qualquer instancia
Mase, se apenas criarmos a variável sem checar se ela já existe, perderiamos
O sentido de criar uma variável global
Então antes de apenas criarmos a variável global, checaremos se ela já existe
Se ela já exise, significa que já temos uma instancia do objVida
Se não temos, receberemos 1 na variável 
*/
if variable_global_exists("quantVidas"){
	global.quantVidas++
}
else{
	global.quantVidas = 1
}

indentificador = global.quantVidas
//Agora que criamos um indentificador, ficará mais fácil apagar a bolinha certa