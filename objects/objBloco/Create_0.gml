/*
Queremos criar a chanse de naser um bloco com bala
Para isto, usaremos uma função para aleatorizar os números
A chace de um bloco nacer com uma bola dentro será de 1 para 15
Para aleatorizar usaremos a função irandom_range()
Descrição:
function irandom_range(n1: Real, n2: Real) -> Real
This function is similar to random_range() only with integer values as the
input.
n1 The low end of the range from which the random number will be selected.
n2 The high end of the range from which the random number will be selected

Tradução:
Função irandom_range(n1: valor Real, n2: valor Real) retorno Real
Esta função é simplar ao random_range(), mas apenas com os números inteiros
n1 O menor valor possivel do intervalo que será sorteado
n2 O menor valor possivel do intervalo que será sorteado

E caso o número sorteado seja o 15, ele iniciará com uma bola dentro
*/
tipoBloco = irandom_range(1, 15)

if tipoBloco == 15{
	//Trocar o sprite para um com a bola dentro
	sprite_index = sprBlocoBola
}