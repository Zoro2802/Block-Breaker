/*
Por enquanto, não importa se usarmos o draw ou o draw GUI, pois
nosso jogo, não possui câmera

Agora para mostrar os pontos vamos usar uma função e para aproveitarmos e aprendermos
Sobre padronização de nomes de função e com ela funciona no Game Maker

Quabdo formos criar uma função, há um certo padrão a ser seguido, este padrão
é a primeira palavra sendo um verbo, e depois a segunda palavra estando
com a primeira letra maiuscula, e complementando o verbo
Por exemplo:
Se eu fosse criar uma função para quebrar blocos eu criaria quebrarBlocos
Se eu quiser checar a colisão entra dois objetos, seria o checarColisão()
Se eu quiser iniciar o jogo, ou seja, lançar a bola, usaria o lancarBola()
Se eu quiser inverter a direção da bola, eu criaria o redirecionarBola()

No Game Maker as funções são parecidos, a diferença é due são em inglês
Então, por exemplo, nós queremos mostrar o texto na tela, podemos dizer que queremos
desenhar um texto na tela, agora, é só separar as palavras chaves desta frase
Quais são elas: desenhar e texto
Agora é só traduzir as duas palavras em inglês
Desenhar: draw
Texto: text
Ou seja, muito provavelmente existe uma função com este nome
Então, mesmo não sabendo o nome da função, Você pode tentar achar ela
Pelo nome em inglês, ou usando o nome do que você fazer de referencia
Por exemplo, muitas para não dezer todas as funções relacionadas a fase
Vão estar com "room" em seu nome, relacionado ao conteudo do texto, vai estar
com "text" em seu nome e assim por diante
********Outra padronização de código, é quando você quiser alterar um valor
		a função terá "set" no nome, e quando você quiser receber um valor
		Provavelmente terá "get" ou "is" no nome
Então vamos ver a descrição do draw_text():
function draw_text(x: Real, string: Any) -> Undefined
Whith this function you can draw any string at any position within the room
(for drawingtion real numkber you should use the string() funtion to convert
them into text).
X The x coordinate of the drawn string.
Y The y coordinate of the drawn string.
string The string to draw.

Tradução:
Função draw_text(x: valor real, y: valor real, string: qualquer) retorno vazio ou
indefinido
Com esta função, você pode desenhar qualquer texto e em qualquer posição na sala
(Para desenhar um valor real, você deve usar a função string() para converter o
em texto)
X A cordenada x de texto
Y A cordenada y do texto
string O texto que queria desenhar

O interessante, é que a função, já indica do que fazer caso o seu texto
use número, que é o nosso caso, vamos ver a descrição dela:
Descrição:
function string(val_or_format: Any, [...: Any*]) -> String
Whith this function you can turn any value into a format string.
val_or_format The value to be turned into a string or a formato string
... Valores a ser trocados no placheholder

Então, como colocarmos os pontos para serem mostrados, temos que traduzilos
para string e mostra-los, e para deixar um pouco mais dinâmico, criaremos uma
mensagem para isto

Bom, mas o texto está pequeno, então vamos ter que usar um outro método/função
Uma maeira seria usado o draw_text_transformed(), mas ele fica fora do lugar e
pixelizado, então vsmos criar uma fonte a por lá, controlar o desenho e o
tamanho do texto

Agora que já criamos a fonte, iremos colocar para usu-la usando a função draw_set_font()
Descrição:
function draw_set_font (font: Asset.GMFont) -> Undefined
This function will set the font to be used for all funther text drawing.
font The name of the font to use.

Tradução:
Função draw_set_font (font: Fonte criada) retorno vazio ou indefinido 
Esta função irá dewfinir a font a ser usada para todos os futuros textos
font O nome da fonte a ser usada

Para finalizar, vamos colocar para aparecer mais zeros na frete
*/
if global.pontos < 10{
	mensagem = "0000" + string(global.pontos)
}

*/
mensagem = string(global.pontos)

//E agora desenhamos na tela
draw_text(x,y,mensagem)
