//Aumenta a quantidade de batidas
batidas++

//Coloca o coração para pular
direcaoVertical = - 6

//Desacelerar a gravidade
gravidade = 0.2

/*Quando colidir e estiver a direita, vai a esquerda e vice versa
E isto, basta multiplicalo por - 1
*/
direcaoHorizontal = 1.2* sign(direcaoHorizontal) * -1

//Direção do giro da instancia
velocidadeGiro *= -1