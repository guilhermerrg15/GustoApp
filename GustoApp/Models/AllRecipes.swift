//
//  AllRecipes.swift
//  Gustô
//
//  Created by Isabella Gomes  on 31/10/22.
//

import Foundation



class AllRecipes: ObservableObject {
    static let instance = AllRecipes()
    
    private init(){}
    
    @Published var easyRecipe: [Recipe] = [
        Recipe(name: "Macarrão com Bolonhesa",
               image: "macarrao",
               description: "Macarrão com molho feito com carne bovina moída e tomate e carne moida com toque de queijo ralado",
               ingredientes: [
                Ingrediente(quantidade: "150g", alimento: "macarrão"),
                Ingrediente(quantidade: "100g", alimento: "carne moída"),
                Ingrediente(quantidade: "150 ml", alimento: "molho de tomate"),
                Ingrediente(quantidade: "1 dente", alimento: "alho picado"),
                Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                Ingrediente(quantidade: "50g", alimento: "queijo ralado picado"),
                Ingrediente(quantidade: "1 colher", alimento: "sopa Azeite extra-virgem"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "pimenta"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
               ],
               recipeTime: "45 min",
               level: .easy,
               instructions: [
                PageViewContent(
                    title: "Coloque uma panela com água acima da metade para ferver",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Assim que bolhas de ar começarem a se formar adicione o macarrão ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Deixe-o na panela pelo tempo indicado no pacote do macarrão comprado",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela pequena coloque o azeite para esquentar (até começar a borbulhar)",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque a cebola picada e refogue por 2 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o alho picado e refogue por mais 1 minuto",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Nesta panela, coloque a carne para fritar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Tempere a carne já na panela com sal e pimenta",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Mexa a carne para dourar de todos os lados",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque na panela o molho de tomate e mexa-o até começar a ferver ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Após o tempo do macarrão, escorra-o e coloque em um prato e Despeje o molho de tomate quente sobre o macarrão",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espalhe o queijo ralado por todo o prato",
                    //imageName: "",
                    showsDismissButton: true)
                
               ]),
        
        Recipe(name: "Omelete de queijo e presunto",
               image: "omelete",
               description: "Ovos batidos fritados na manteiga com fatias de queijo e presunto",
               ingredientes: [
                Ingrediente(quantidade: "3 fatias", alimento: "queijo"),
                Ingrediente(quantidade: "2 fatias", alimento: "presunto"),
                Ingrediente(quantidade: "2", alimento: " ovos",separador:  ""),
                Ingrediente(quantidade: "2 colheres", alimento: "manteiga"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "orégano (opcional)"),
                Ingrediente(quantidade: "1 colher de café", alimento: "sal"),
               ],
               recipeTime: "10 min",
               level: .easy,
               instructions: [
                PageViewContent(
                    title: "Pegue um pote de sua preferência",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quebre os ovos com batidas leves na borda do pote e coloque-os lá dentro ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Bata os ovos com um garfo até que a clara e a gema se misture completamente ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o sal e o orégano ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Bata mais um pouco",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque a frigideira no fogo, adicione a manteiga e espere derreter",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espalhe a manteiga derretida por toda a frigideira",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Despeje a mistura na frigideira e espere até que as bordas dourarem",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o queijo e o presunto",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere até o queijo derreter ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Dobre o omelete e passe para um prato",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
        
        Recipe(name: "Crepioca de Frango",
               image: "crepioca de frango",
               description: "Massa a base de tapioca batida com ovos, recheada de frango",
               ingredientes: [
                Ingrediente(parte: "Massa:"),
                Ingrediente(quantidade: "1", alimento: " ovo", separador:  ""),
                Ingrediente(quantidade: "1", alimento: " clara de ovo", separador:  ""),
                Ingrediente(quantidade: "2 colheres de sopa", alimento: "tapioca"),
                Ingrediente(quantidade: "1 colher de sopa", alimento: "leite"),
                Ingrediente(parte: "Recheio:"),
                Ingrediente(quantidade: "1 filé", alimento: "peito de frango"),
                Ingrediente(quantidade: "2 colheres de sopa cheias", alimento: "requeijão"),
                Ingrediente(quantidade: "1/2", alimento: " cebola picada",separador:  ""),
                Ingrediente(quantidade: "1 colher de chá", alimento: "pimenta"),
                Ingrediente(quantidade: "2 colheres de chá", alimento: "sal"),
                Ingrediente(quantidade: "2 colheres de chá", alimento: "orégano"),
                Ingrediente(quantidade: "2 colheres de chá", alimento: "azeite"),
               ],
               recipeTime: "15 min",
               level: .easy,
               instructions: [
                PageViewContent(
                    title: "Modo de preparo de frango:",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela, coloque o peito de frango, e cubra com água",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione uma colher de sal e de orégano e deixe ferver em fogo alto",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando ferver abaixe o fogo e deixe cozinhar por 30 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Após esse tempo retire o frango e desfie-o com um garfo",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo massa: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em um recipiente, misture o ovo com as claras com a ajuda de um garfo (movimento da figura)",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o leite e por fim a tapioca a essa mistura. Bata até que fique homogêneo",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo recheio: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque uma panela e refogue a cebola picada com 1 colher de azeite",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o frango, o requeijão e cozinhe por 3 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Tempere com o sal, pimenta e orégano, deixando cozinhar por mais 1 minuto e reserve",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma frigideira coloque a outra colher de azeite e derrame a massa ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Assim que a massa soltar da frigideira vire-a para dourar do outro lado e tire do fogo",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espalhe o recheio em cima da crepioca, dobre-a ao meio e sirva em um prato",
                    //imageName: "",
                    showsDismissButton: true)
                
               ]),
        
        Recipe(name: "Sopa de legumes",
               image: "sopa de legumes",
               description: "caldo com legumes diversos",
               ingredientes: [
                Ingrediente(quantidade: "1 colher de chá", alimento: "óleo"),
                Ingrediente(quantidade: "1/4", alimento: "cebola ralada"),
                Ingrediente(quantidade: "1/2 dente", alimento: "alho amassado"),
                Ingrediente(quantidade: "1/4", alimento: "cenoura média em rodelas"),
                Ingrediente(quantidade: "1", alimento: "batata em cubos",separador:  ""),
                Ingrediente(quantidade: "1/2", alimento: "tomate sem pele e sem sementes picados",separador:  ""),
                Ingrediente(quantidade: "1/2 envelope", alimento: "MAGGI® Sopa de Carne"),
                Ingrediente(quantidade: "1/2 xícara", alimento: "água fria")
               ],
               recipeTime: "30 min",
               level: .easy,
               instructions: [
                PageViewContent(
                    title: "Em uma panela aqueça o óleo e refogue a cebola e o alho",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Acrescente a cenoura, as batatas e os tomates",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Junte 1/4 de água fria e deixe cozinhar em fogo baixo, por cerca de 20 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Dissolva a MAGGI Sopa em no restante água fria",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Junte à panela, mexa bem até ferver e deixe cozinhar por cerca de 5 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Sirva em uma tigela",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
        
        Recipe(name: "Strogonoff de Frango",
               image: "strogonoff de frango",
               description: "Frango picado com creme de leite e molho de tomete acompanhado de arroz branco e batata palha",
               ingredientes: [
                Ingrediente(parte: "Srogonoff:"),
                Ingrediente(quantidade: "100g", alimento: "peito de frango cortado em cubos ou tiras"),
                Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                Ingrediente(quantidade: "1/2 dente", alimento: "alho picado"),
                Ingrediente(quantidade: "1/2 colher de sopa", alimento: "manteiga"),
                Ingrediente(quantidade: "1/2 caixa", alimento: "creme de leite"),
                Ingrediente(quantidade: "1 colher de sopa", alimento: "mostarda (opcional)"),
                Ingrediente(quantidade: "1 colher de sopa", alimento: "molho de tomate"),
                Ingrediente(quantidade: "2 colheres de sopa", alimento: "ketchup"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "pimenta"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                Ingrediente(parte:"Arroz:"),
                Ingrediente(quantidade: "2 colheres de sopa", alimento: "azeite"),
                Ingrediente(quantidade: "1/2 dente", alimento: "alho picada"),
                Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                Ingrediente(quantidade: "1/2 xícara", alimento: "arroz"),
                Ingrediente(quantidade: "", alimento: "Água suficiente para cobrir o arroz",separador:  ""),
                Ingrediente(parte: "Extra:"),
                Ingrediente(quantidade: "", alimento: "batata palha",separador:  ""),
               ],
               recipeTime: "40 min",
               level: .easy,
               instructions: [
                PageViewContent(
                    title: "Modo de preparo Strogonoff: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Leve uma panela ao fogo médio e refogue a cebola e o alho na manteiga até que ela fique douradinha",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Na sequência, acrescente o frango, o sal, a pimenta, misture e espere dourar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o ketchup, a mostarda e o molho de tomate e misture por cerca de 1 minuto",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o creme de leite, misture e deixe por um tempo até o caldo engrossar ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque em um prato ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do arroz: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela refogue no azeite o alho e a cebola",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando estiverem dourados acrescente o arroz e deixe fritar um pouco, mexendo para não deixar queimar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque água dois dedos acima do arroz",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere ferver e, quando isso acontecer, baixe o fogo, tampe e deixe cozinhar até secar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque no prato",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione a batata palha",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
    ]
    
    @Published var  mediumRecipe : [Recipe] = [
        Recipe(name: "Bife c/ molho madeira e arroz à piamontese",
               image: "bife molho madeira",
               description: "Arroz à base de creme de leite e queijo, acompanhado de carne bovina com molho do vinho madeira",
               ingredientes: [Ingrediente(parte: "Arroz:"),
                              Ingrediente(quantidade: "2 colheres de sopa", alimento: "azeite"),
                              Ingrediente(quantidade: "1/2 dente", alimento: "alho"),
                              Ingrediente(quantidade: "1/4", alimento: "cebola"),
                              Ingrediente(quantidade: "1 xícara", alimento: "arroz"),
                              Ingrediente(quantidade: "", alimento: "Água suficiente para cobrir o arroz", separador: ""),
                              Ingrediente(quantidade: "1/2 caixa", alimento: "creme de leite"),
                              Ingrediente(quantidade: "50g", alimento: "queijo mussarela"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "noz moscada"),
                              Ingrediente(quantidade: "25 g", alimento: "queijo parmesão"),
                              Ingrediente(parte: "Bife:"),
                              Ingrediente(quantidade: "1 colher de sopa", alimento: "manteiga"),
                              Ingrediente(quantidade: "1", alimento: "file mignon grande",separador:""),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "pimenta"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                              Ingrediente(parte: "Molho madeira:"),
                              Ingrediente(quantidade: "40 g", alimento: "farinha de trigo"),
                              Ingrediente(quantidade: "1 colher de sopa", alimento: "manteiga"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                              Ingrediente(quantidade: "80 ml", alimento: "vinho madeira"),
                              Ingrediente(quantidade: "250 ml", alimento: "caldo de carne"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "mostarda"),
                              Ingrediente(quantidade: "80g", alimento: "champignon (opcional)")
                             ],
               recipeTime: "60 min",
               level: .medium,
               instructions: [
                PageViewContent(
                    title: "Modo de preparo do arroz: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela refogue no azeite o alho e a cebola ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando estiverem dourados acrescente o arroz e deixe fritar um pouco, mexendo para não deixar queimar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque água dois dedos acima do arroz",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere ferver e, quando isso acontecer, baixe o fogo, tampe e deixe cozinhar até secar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Despeje o creme de leite, a mussarela e a noz moscada ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando a mussarela derreter é hora de adicionar o queijo parmesão",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "coloque em um prato",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do bife",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Tempere o bife com sal e pimenta",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma frigideira com 1 colher de manteiga grelhe o bife de filé mignon dos dois lados por cerca de 2 minutos de cada lado",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque no prato",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do molho madeira: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Derreta a manteiga em uma panela",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Junte a farinha e mexa bem até que fique dourada",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Acrescente aos poucos o vinho madeira",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Acrescente o caldo de carne, o sal, a mostarda e o champignon mexendo sempre até engrossar ligeiramente",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Despeje molho em cima do bife",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
        
        Recipe(name: "Salmão Grelhado",
               image: "salmão",
               description: "Filé de salmão grelhado com arroz com pedaços de brócolis",
               ingredientes: [Ingrediente(parte:"Salmão:"),
                              Ingrediente(quantidade: "1 filé", alimento: "salmão sem pele"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "Azeite"),
                              Ingrediente(quantidade: "1/4 dentes", alimento: "alho picados finamente"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "pimenta"),
                              Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                              Ingrediente(quantidade: "1/4", alimento: "limão"),
                              Ingrediente(parte:"Arroz de brócolis:"),
                              Ingrediente(quantidade: "1 colher de sopa", alimento: "azeite"),
                              Ingrediente(quantidade: "1/2 dente", alimento: "alho picado"),
                              Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                              Ingrediente(quantidade: "1/2 xícara", alimento: "arroz"),
                              Ingrediente(quantidade: "", alimento: "Água suficiente para cobrir o arroz",separador: ""),
                              Ingrediente(quantidade: "1/2 maço", alimento: "brócolis")],
               recipeTime: "70 min",
               level: .medium,
               instructions: [
                PageViewContent(
                    title: "Modo de preparo do salmão: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Com papel-toalha, seque o peixe, que geralmente está bem úmido",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Tempere com sal, alho e pimenta",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Esprema o limão por todo o salmão ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Esquente uma frigideira com o azeite",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque os filés de salmão com a pele virada para cima e deixe por 5 minutos na frigideira",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Sirva seu salmão em um prato",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do arroz de brócolis: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela refogue no azeite o alho e a cebola",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando estiverem dourados acrescente o arroz e deixe fritar um pouco, mexendo para não deixar queimar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque água dois dedos acima do arroz",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere ferver e, quando isso acontecer, baixe o fogo, tampe e deixe cozinhar até secar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Enquanto isso lave o brócolis, corte em pedaços menores",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Acrescente o brócolis ao arroz cerca de 5 min depois de ferver",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Sirva seu arroz com brócolis ",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
        
        Recipe(name: "Brownie",
               image: "brownie",
               description: "Bolo, geralmente achatado, denso e rico em chocolate",
               ingredientes: [
                Ingrediente(quantidade: "3", alimento: " ovos", separador: ""),
                Ingrediente(quantidade: "100g", alimento: "manteiga"),
                Ingrediente(quantidade: "180g", alimento: "açúcar"),
                Ingrediente(quantidade: "250g", alimento: "Nescau"),
                Ingrediente(quantidade: "1 xícara", alimento: "farinha de trigo")
               ],
               recipeTime: "40 min",
               level: .medium,
               instructions: [
                PageViewContent(
                    title: "Aqueça o forno a 260 graus",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Bata os ovos com a manteiga",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o açúcar e bata por mais 2 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Inclua o Nescau e por fim a farinha aos poucos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espalhe manteiga em uma forma e depois cubra uniformemente a forma com uma camada fina de farinha",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque a massa na forma e leve-a ao forno por 45 minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Após o tempo retire do forno deixe-o esfriar e está pronto",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
    ]
    
    @Published var hardRecipe: [Recipe] = [
        Recipe(name: "Bife acebolado",
               image: "bife acebolado",
               description: "bife grelhado com cebola acompanhados de arroz, feijão, couve refogada e farofa de cebola",
               ingredientes: [
                Ingrediente(parte:"Arroz:"),
                Ingrediente(quantidade: "2 colheres de sopa", alimento: "azeite"),
                Ingrediente(quantidade: "1/2 dente", alimento: "alho picado"),
                Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                Ingrediente(quantidade: "1/2 xícara", alimento: "arroz"),
                Ingrediente(quantidade: "", alimento: "Água suficiente para cobrir o arroz", separador: ""),
                Ingrediente(parte: "Feijão:"),
                Ingrediente(quantidade: "50 g", alimento: "feijão-preto"),
                Ingrediente(quantidade: "1/2 colheres de sopa", alimento: "óleo"),
                Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                Ingrediente(quantidade: "1/2 dente", alimento: "alho amassado"),
                Ingrediente(quantidade: "1 xícaras chá", alimento: "água (200 ml)"),
                Ingrediente(quantidade: "1/2 sachê", alimento: "tempero de sua escolha"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                Ingrediente(parte: "Couve refogada:"),
                Ingrediente(quantidade: "50g", alimento: "couve"),
                Ingrediente(quantidade: "1/2 dente", alimento: "alho picado"),
                Ingrediente(quantidade: "1/4", alimento: "cebola picada"),
                Ingrediente(quantidade: "1 colher de sopa cheia", alimento: "óleo"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                Ingrediente(parte: "Farofa:"),
                Ingrediente(quantidade: "100g", alimento: "farinha de mandioca"),
                Ingrediente(quantidade: "300g", alimento: "cebola grande fatiada"),
                Ingrediente(quantidade: "50g", alimento: "manteiga"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "sal"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "pimenta"),
                Ingrediente(parte: "Bife:"),
                Ingrediente(quantidade: "100g", alimento: "contrafilé (ou outro bife de sua preferência)"),
                Ingrediente(quantidade: "1/2 tablete", alimento: "caldo de carne"),
                Ingrediente(quantidade: "1/2 xícara de chá", alimento: "água quente"),
                Ingrediente(quantidade: "1 colher de chá", alimento: "azeite"),
                Ingrediente(quantidade: "1/4", alimento: "cebola em rodelas")
               ],
               recipeTime: "80 min",
               level: .hard,
               instructions: [
                PageViewContent(
                    title: "Modo de preparo do arroz: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela refogue no azeite o alho e a cebola ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando estiverem dourados acrescente o arroz e deixe fritar um pouco, mexendo para não deixar queimar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque água dois dedos acima do arroz ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere ferver e, quando isso acontecer, baixe o fogo, tampe e deixe cozinhar até secar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o arroz no prato",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do feijão: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela de pressão, coloque o feijão e a água, e cozinhe em fogo médio por 15 minutos, após o início da fervura. Desligue o fogo e espere a pressão ceder",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela, aqueça o óleo e refogue a cebola e o alho",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Junte 1 concha do feijão cozido e coloque-os na panela",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o Tempero e, mexa até engrossar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o feijão no prato",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo da couve refogada: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Leve uma panela pequena ao fogo coloque o óleo , o alho e cebola e deixe dourar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Acrescente a couve e abaixe o fogo",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o sal e mexa ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere cozinhar por uns 3 minutos somente e está pronta",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo da farofa: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque a manteiga em uma frigideira grande com as cebolas",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Frite as cebolas e a manteiga e esteja em quantidade boa para que a farofa fique úmida",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Acrescente a farinha, continue mexendo e abaixe o fogo",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o sal e a pimenta logo após adicionar a farinha.",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Mexa até que incorpore toda a cebola e a manteiga na farinha e está pronta",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do bife acebolado: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Dissolva o caldo de carne na água quente",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Tempere o bife com metade do caldo e reserve a outra metade",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque uma frigideira no fogo e adicione o azeite e o bife para fritar",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Retire o bife da frigideira e reserve",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Na mesma frigideira, refogue a cebola em rodelas",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione a outra metade do caldo e refogue por mais um minuto",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Junte o bife ao refogado e deixe cozinhar por mais dois minutos",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o bife com as cebolas no prato",
                    //imageName: "",
                    showsDismissButton: true)
               ]),
        
        Recipe(name: "Empadão de Frango",
               image: "empadao",
               description: "massa estilo de empada recheada de frango desfiado com requeijão ",
               ingredientes: [
                Ingrediente(parte: "Massa:"),
                Ingrediente(quantidade: "140g", alimento: "manteiga"),
                Ingrediente(quantidade: "1", alimento: " ovo",separador: ""),
                Ingrediente(quantidade: "220g", alimento: "farinha de trigo"),
                Ingrediente(quantidade: "2g", alimento: "fermento em pó"),
                Ingrediente(parte: "Recheio"),
                Ingrediente(quantidade: "650g", alimento: "peito de frango cozido e desfiado"),
                Ingrediente(quantidade: "1 lata", alimento: "molho de tomate"),
                Ingrediente(quantidade: "¼ xícara", alimento: "azeitonas pretas picadas (opcional)"),
                Ingrediente(quantidade: "1", alimento: "cebola média fatiada", separador: ""),
                Ingrediente(quantidade: "1 colher de sopa", alimento: "azeite"),
                Ingrediente(quantidade: "2 colheres", alimento: "sal"),
                Ingrediente(quantidade: "2 colheres", alimento: "pimenta"),
                Ingrediente(quantidade: "1 tablete", alimento: " caldo de galinha"),
                Ingrediente(quantidade: "2 dentes", alimento: "alho amassados"),
                Ingrediente(quantidade: "400g", alimento: "requeijão"),
                Ingrediente(parte: "Finalização:"),
                Ingrediente(quantidade: "1", alimento: " ovo batido",separador: "")
               ],
               recipeTime: "2h",
               level: .hard,
               instructions: [
                PageViewContent(
                    title: "Modo de preparo da massa: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Pré-aqueça o forno a 180ºC e unte uma travessa",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma tigela misture a manteiga com o ovo",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Junte a farinha e o fermento e amasse por igual até que a massa fique homogênea ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Reserve na geladeira",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Forre a forma (de aproximadamente 30 cm de diâmetro) espalhando metade da massa por igual e mantenha a outra metade na geladeira",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Embrulhe a forma e leve-a para geladeira por 30 minutos ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Modo de preparo do recheio:  ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em uma panela cozinhe o peito de frango com água em fogo médio",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Feito isso, escoe a água e com um garfo desfie o peito de frango",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Em seguida, coloque a cebola e o alho picado em uma panela com azeite e refogue-os",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Na sequência adicione o frango e o molho de tomate e misture",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Coloque o requeijão e as azeitonas e misture",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Quando os ingredientes estiverem refogados desligue o fogo e reserve",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Espere o recheio esfriar completamente antes de colocá-lo na massa",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Montagem: ",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Retire a massa da geladeira",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Adicione o recheio por cima da massa",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Cubra o recheio com a outra metade da massa",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Use o ovo para pincelar por cima da massa",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Leve ao forno",
                    //imageName: "",
                    showsDismissButton: false),
                PageViewContent(
                    title: "Retire do forno e sirva",
                    //imageName: "",
                    showsDismissButton: true)
               ])
    ]
    
    @Published var coins : Int = 0
    @Published var receita : Int = 0
    
    func add(newCoins: Int = 10){
        self.coins += newCoins
    }
    func add(newReceita: Int = 1){
        self.receita += newReceita
    }
    
}
