/*
Neste arquivo, armazenaremos as funções de salvamento e carregamento
do jogo

Lembrando que funções são instruções pré feitas para chamarmos aond
Quisermos, deixando o código mais limpo e organizado

Lembrando que as funções, possuem parâmetros que serão usados
Para alterar o seu comportamento

No nosso caso, quando formos salvar, o paâmetro a ser passado
Vai ser o nome do arquivo de save

vamos chama-lo de nomeArquivo

E caso não passemos o nome do arquivo, ele iniciára com o
nome saveJogo.ini
*/

//Função para salvar o jogo
function salvarJogo(nomeArquivo = "saveJogo.ini"){

/*
Quando chamar esta função, eu preciso abrir ou cruiar o arquivo cm este nome part isso usaremos ini_open()
descriçao:
funcaoi ini_open(name:texto do arquivo)retorno indefinido ou vazio esta funcao abre o arquivo ini
paqra ler e escrever name o nome do arquivo ini
*/
//abro o arquivo de save 
ini_open(nomeArquivo)
/*
ini_write_string():

Tradução
Função ini_wrtie_real(section: String, key: String, value: Real) vazio
Vc pode usar esta função para escrever um valor númerico em um arquivo
de save
section: A sessão do arquivo ini para escrever 
key O chave() com a relevância da sessâo do arquivo ini para escrever
value O valor real para escrever relevante ao destino

Resumindo, esta função serve para escrever valores reais e ordem deve
Primeiro: A categoria da informação
Exemplo: Se fossemos fazer um jogo de RPG, esta seria a sessão dos
Status do player, ou seja, a categoria status

segundo: O nome daquele valor
Exemplo: Dentro da categoria Status, teriamos os status separados
como força, velocidade, hp, etc

Por fim? o valor numérico daquela informação 
Exemplo: força == 5-, velocidade = 60, etc

ini_write_string():
A diferença desta função para a write_real, é que você adiciona valores
de texto

No nosso caso, só queremos savar por enquanto a maior pontuação feita
*/

//Escreve no arquivo, o maior ponto
ini_write_real("pontos","maiorPontos",global.maiorPontos)
//Assim que eu terminei de escrever, iremos fechar o arquivo de save

ini_close()
}

//Função para carregar osdados salvos
function carregarJogo(nomeArquivo = "saveJogo.ini"){
	//Primeiro devemos abrir o arquivo de save, para isto usaremos a mesma função ini_open()
	ini_open(nomeArquivo)
	
	/*
	Na outra função, como queriamos salvar informações, nós usamos o ini_write, mas como agora queremos
	Ler as informações, usaremos as funções ini_read_real() e a ini_read_string()
	********Para melhor entendimento, usarei o mesmo texto para explicar as duas funções, pois o intenção, pois o intenção
	é a mesma, diferenciando apenas que uma recebe texto e a outra recebe números
	Deixarei em parenteses os nomes a ser substituidos sendo o lado esquerdo a função de string
	e o lado direito a de números
	Tradução:
	Função ini_read_(string ou real)(section: valor String, key: valor (String ou real)
	Retorno do tipo (String ou real)
	Você pode usar esta função para ler um valor (string (texto) ou real (número)) do arquivo de dados ini
	section A sessão de onde vai ler dentro do arqui .ini
	key A chave (ou indentificação) referente a sessão do arquivo .ini
	defaut O valor (string ou real) para retornar se um valor (string ou real) não é encontrando no caminho
	definido (ou o arquivo .ini não existir). Tem que ser um valor (string ou real)
	
	Ou seja, ao usar esta função, se você não passar o caminho corretamente ou caso o arquivo de save não
	tenha sido criado ainda, esta função retornará um alor padrao
	Isto nos ajudará a criar ou save de maior pontuação, pois caso seja a primeira vez que o jogador
	Abrir o jogo, podemos deixar o menor valor possivel de ser tirado(0), mas das próximas vezes que 
	abrir o jogo e se o jogo tenha sido salvo, automáticamente receberá o valor salvo
	
	No nosso caso, receberemos o valor salvo de moiorPontuacao
	*/
	
	/*
	Recebo o valor na maior pontuacao (Lembrando que o caminho de carregamento tem que ser
	igual ao caminho da informação salva) e, caso não tenha o arquivo ou não ache a informação,
	reacebermos 0
	*/
	global.maiorPontos = ini_read_real("Pontos", "maiorPontos", 0)
	
	//Assim que terminar de carregar todos os dados, podemos fechar o arquivo
	ini_close()
}
/*
Caso queiram achar o arquivo de save no computador, basta ir em:(lembrando que o que está
				em parenteses é para ser subistituido):
	Disco local -> Usuários -> (Seu Usuário) -> AppData -> Local -> (Nome do seu jogo)
	E abrir o Arquivo com o nome do arquivo que você definiu
	
	Se não achar, basta abrir o cmd e digitar o seguinte comando
	cd C:\User\(Seu Usuário)\AppData\Local\(NomeDoJogo)
	(nome do arquivo) open
Agora,  falta só colocar as funções no lugar certo
*/
	
