/*
Agora é só configurar para mostrar se a quantidade de vida sobrando
através dos sprites
Para isto, vamos usar o indentificadorcomo exemplo
Nós sabemos que quando a 3 vidas, terá 2 bolinhas acesas
Quando eu tenho 2 vidas, terá 1 bolinha acesa
E quando eu tenho 1 vida, não terá bolinha acesa
Ou seja, toda vez a quantidade de vida é maior do que a quantidade
de bolinhas acesas
E para saber qual bolinha deve se acender ou não, é só comparar a quantidade 
de vida ao indentificar
Ou seja, caso o jogador tenha 3 vidas, 1 e 2, ficarão acesas
Já a vida 3, ficará apagada
Se ele tiver 2 vidas, só a primeira bolinha ficará acesa, enquanto
as bolinhas 2 e 3, ficarão apagadas
Sendo assim, temos serteza de que, toda vez que o indentificador for maior
ou igual a quantidade de vidas, a bolinha ficará apagada
Se o indentificador for menor, ficará aceso
*/
if indentificador >= global.vidas{
	sprite_index = sprVidaUsada
}
else{
	
	sprite_index = sprBolavida
}