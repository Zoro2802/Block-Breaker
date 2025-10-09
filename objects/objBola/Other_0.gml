/*
Este evento é gerado toda vez que a instancia sai da tela
No nosso, quando uma instancia do objBola sai da tela
E como ela só pode sair por baixo, temos certeza que o player perdeu
a bolinha, consequentemente uma das vidas

Então, vamos configurar 4 coisa
1º Dimiunuir a vida em 1
2º Fazer a animação de morte onde a bolinha saiu 
3º Apagar do código a bolinha que saui(para evitar lags)
4º Criar uma nova bolinha caso ainda tenha vida
*/


//Primeiro, tiramos uma vida
global.vidas--

//Segundo, criar uma animação de morte
//Só que, para isto, criaremos um novo objeto chamado objMorte
//E aprendemos como criar novas instancias dentro do código