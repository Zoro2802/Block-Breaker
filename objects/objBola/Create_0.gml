/*
amos começar criando as varíaveis de direção e de velocidade da bola 
*/
//Vamos iniciar a variavel velocidade recebendo 3
velocidade = 3

// E agora vamos definir as direções, ambas iniciando zeradas
direcaoVertical = 0
direcaoHorizontal = 0

/* E também temos que iniciar com a bola no meio do player, como podemos fazer isso?
Sujestões: Seguir o player, mas como? Pegando a posição do player
Então o x da bola, tem que ser o x do player para ficar no meio do player
Lembrando que ao usar "." você está se refirindo a uma propriedadefunção da variavel/objeto, no nosso caso, usaremos as propriedades do objPlayer
E o y da bola dever ser apenas alguns pixel acima  do y do player 
*/
//Aqui esta o motivo da bola iniciar lá embaixo com player, ou seja, ou
//Começamos um novo objeto para indentificar que é uma bola criada pelo bloco
//Ou adaptamos o objeto para funcionar tanto no inicio do jogo, quanto
//quando for criado

//Certo escolhemos a adaptação, então 
/**x = objPlayer.x
y = objPlayer.y - 10
*/
/*
Só que tem um problema, sabem qual? Toda vez que a bolinha for criada ela vai aparecer no meio do player, só que, nem toda bola é criada acima do player, afinal, temoblocos que geram bolas, ou seja, termos que criar um jeito de verificar se é o inicio do jogo
Sujestões:
Quando a bola está na plataforma, ok, mas estamos resolvendo exatamente isso
Pelos pontos, ok, mas e quando o player perde uma vida, não necessáriamente perde pontos, apesar de iniciar no centro da barra, então não podemos usar este método
Podemos criar um objeto separado para bolas que provem de blocos, ok Podemos usar este método (Existem outras maneiras, mas vamos usar estas)
Apesar da bola iniciar no lugar certo, ela não segue o player, para seguir
Termos que usar uma função no step
*/
//isStart = false //Futuramente, esta deve ser uma variável global

/*
Lembra que eu falei que futuramente fariamos a variável sendo global?
È por isto, nós vamos verificar se o jogo iniciou ou não
E ele vai começa não iniciando, e depois ir para cima do player
E quando não estiver, vai iniciar com um direção aleatória

Não esqueça de verificar se a variável global já existe
Se ela não existe, criar a variável
*/

if ! variable_global_exists("isStart"){
	global.isStart = false
	x = objPlayer.x
	y = objPlayer.y - 10
}
else{
	//Caso exista, iremos aleatorizar a direção para aonde a bola vai
	
	direcaoHorizontal = irandom_range(0, 1)
	direcaoVertical= irandom_range(0, 1)
	
	//O representa a chance de ir para esquerda ou para cima
	if direcaoHorizontal == 0{
		direcaoHorizontal = -1
	}
	if direcaoVertical == 0{
		direcaoVertical = -1
	}
}

//Processo de criação da quantidade de bolas
if ! variable_global_exists("quantBolas"){
	global.quantBolas = 1
}
else{
	global.quantBolas++
}

//Local para armazenar o angulo que a bola vai se mover
armazenarAnguloVertical = 1
armazenarAnguloHorizontal = 1
