/*
Explicação dos alarmes:
Os alarmes possuem algumas propriedades
1º: Os alarmes são parecidos com vetores, ou seja, o primeiro alarmes
Ficam na posição 0,e o últimos fica nan quantidade de vetores menos um
Sabendo disso e também sabendo que temos 12 vetores, qual é a posição
do último alarme? Isso, 11

2º Ao passar um valor um vetor (exp: alarme[0] = 10), ele ira
Diminuir em 1 a cada frame, ou seja, se vc atribuir por exemplo 10
Quer dizer que vai demorar 10 frames para funcionar

3º O alrme, assim que chega a 0, irá roda o código que há dentro dele
Por exemplo, se vc colocar dentro de um alarm para ele criar
Um inimigo e colocar para ele receber 10, quer dizer que a cada 10 frames
Ele irá criar um novo inimigo
Então é só colocarmos o alarm para receber 60 frames
Então é só colocarmos o alarm para receber 60 vezes a quantidade de segungos
Que a cada segundo que vc calcular, ele irá rodar o código
No nosso caso, queremos que assim que criar uma instancia do objMorte
Queremos que ela seja destruida em 2 segundos
Sabemdo disso, qual sitax usaremos para fazer isto? 
*/
//Assim também funciona, mais toda hora você terá que calcular
//Qual é a outra forma
//alarm[0] = 120

//Forma mais simples
alarm[0] = 2 * 60