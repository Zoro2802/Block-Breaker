//Caso não tenha batido contr o player
if batidas == 0{
	y += gravidade	* 2
}

//Quando for a ultima batida
else if batidas == 5{
	//Aumenta a quantidade de vidas do player
	global.vidas ++
	
	//Destruir a instancia
	instance_destroy()
}

//Se não for nem a primeira nem a última batida
else{
	//Ganha o efeito de gravidade
	direcaoVertical += gravidade
	
	//Soma a direção ao y
	y += direcaoVertical

	//Soma direção ao x
	x+= direcaoHorizontal
	
	//Gira a imagem
	image_angle += velocidadeGiro
}

/*
Quando colidircom o objBloco, a afastamento tem que ser maior pois
O player pode usar disto para tirar vantagem
Para evitar, mandaremos o que o dobro do que há normalmentente na
direcaoHorizontal
Mas para não bugar a direção, teremos que receber um novo valor
E para não perder a direção, teremos que pegar se o valor
Que há em direção é positivo ou negativo, e independente do que viver
Multiplicamos por -1, assim mandando para o outro lado
Mas como sabermos se o valor é positivo ou negativo ou negativo?
Para isto, usaremos a função sign()
Descrição:
function sign(n: Real) -> Real
This function returns whether a number is positive
or neither and return 1, -1, 0 respectively.
n The number to get the sing of.

Tradução
Função sign(n: valor Real) retorno Real
Esta função retorna quando o número é positivo, ou nenhum
e retorna 1, -1, ou 0 respectivamente
n O número para o sinal
*/

if place_meeting(x + direcaoHorizontal, y , objColisao){
	direcaoHorizontal = 2.5 * sign(direcaoHorizontal) * -1
}