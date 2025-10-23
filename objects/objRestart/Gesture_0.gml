/*
Toda vez que clicar uma fez no objRestart, ele reiniciára o jogo
E fará a tela de morte sumir
*/

layer_set_visible("TelaMorte", true)
layer_set_visible("TelaMorteFundo", true)
global.siFim = false

/*
Assim que retornamos, vimos que as vidas e outras variáveis globais, não são
Resetadas juntas, isto acontece pois a existencia das variáveis globais, não são
Apagadas, e lá no jogo, aonde checamos a existencia, funcionam com elas existentes
Pra resolver isto, precisamos apenas resetar manualmente ou apagar a existencia delas
*/

//Resetando o bloco na altura certa e demais variáveis
global.blocoAlturaCerta = false

//O jogo não começou
global.isStart = false

//Não ganhou nenhum ponto
global.pontos = 0

//Não há blocos criados
global.quantBlocos = 0

//Não há bolas criadas
global.quantBolas = 0

global.quantVidas = 0

//O "id" do objVida começa zerado
global.vidas = 3

room_restart()