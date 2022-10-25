//
//  RecipeModel.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 17/10/22.
//
import Foundation
import SwiftUI

enum Level: String, CaseIterable, Identifiable {
    var id : String{ self.rawValue}
    case easy = "Básico"
    case medium = "Intermediário"
    case hard = "Difícil"
}


struct Recipe: Identifiable {
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredients: [String]
    let recipeTime : String
    //    let directions : String
    let level : Level
    //    let datePublished: String
    var instructions: [PageViewContent] = []

}

extension Recipe {

    static var easyRecipes: [Recipe] = [
        Recipe(name: "Macarrão a Bolonhesa",
               image: "macarrao",
               description: "Macarrão com molho feito de tomate e carne moida com toque espeiclal de queijo ralado",
               ingredients: ["- 150g de macarrão", "- 100g de carne moída", "- 150 ml de molho de tomate", "- 1 dente de alho picado", "- 1/4 cebola picada", "- 50g de queijo ralado picado", "- 1 colher de sopa Azeite extra-virgem", "- 1 colher de chá de pimenta", "- 1 colher de chá de sal"],
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
               description: "ovos batidos",
               ingredients: ["- 3 fatias de queijo", "- 2 fatias de presunto", "- 2 ovos", "- 2 colheres de manteiga", "- 1 colher de chá de orégano (opcional)", "- 1 colher de café de sal"],
               recipeTime: "45 min",
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
               description: "tapioca batida com ovo",
               ingredients: ["Massa:", "- 1 ovo", "- 1 clara de ovo", "- 2 colheres de sopa de tapioca", "- 1 colher de sopa de leite", "Recheio:", "- 1 filé de peito de frango", "- 2 colheres de sopa cheias de requeijão", "- 1/2 cebola picada", "- 1 colher de chá de pimenta", "- 2 colheres de chá de sal", "- 2 colheres de chá de orégano", "- 2 colheres de chá de azeite"],
               recipeTime: "45 min",
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
               description: "caldo com diversos legumes",
               ingredients: ["- 1 colher de chá de óleo", "- 1/4 de cebola ralada", "- 1/2 dente de alho amassado", "- 1/4 cenoura média em rodelas", "- 1 batatas em cubos", "- 1/2 tomates sem pele e sem sementes picados", "- 1/2 envelope de MAGGI® Sopa de Carne com Conchinhas", "- 1/2 xícara de água fria"],
               recipeTime: "45 min",
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
               description: "frangos ",
               ingredients: ["Strogonoff:", "- 100g de peito de frango cortado em cubos ou tiras", "- 1/4 de cebola picada", "- 1/2 dente de alho picado", "- 1/2 colher de sopa de manteiga", "- 1/2 caixa de creme de leite", "- 1 colher de sopa de mostarda (opcional)", "- 1 colher de sopa de molho de tomate", "- 2 colheres de sopa de ketchup", "- 1 colher de chá de pimenta", "- 1 colher de chá de sal", "Arroz:", "- 2 colheres de sopa de azeite", "- 1/2 dente de alho picada", "- 1/4 de cebola picada", "- 1/2 xícara de arroz", "- Água suficiente para cobrir o arroz", "extra:", "- batata palha"],
               recipeTime: "45 min",
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
    
    public static let MediumRecipes : [Recipe] = [
        Recipe(name: "Bife com molho madera",
               image: "bife molho madeira",
               description: "carne e cebola",
               ingredients: ["Arroz:", "- 2 colheres de sopa de azeite", "- 1/2 dente de alho", "- 1/4 de cebola", "- 1 xícara de arroz", "- Água suficiente para cobrir o arroz", "- 1/2 caixa de creme de leite", "- 50g de queijo mussarela", "- 1 colher de chá noz moscada", "- 25 g de queijo parmesão", "Bife:", "- 1 colher de sopa de manteiga", "- 1 file mignon grande", "- 1 colher de chá de pimenta", "- 1 colher de chá de sal", "Molho madeira:", "- 40 g de farinha de trigo", "- 1 colher de sopa de manteiga", "- 1 colher de chá de sal", "- 80 ml de vinho madeira", "- 250 ml de caldo de carne", "- 1 colher de chá de mostarda", "- champignon (opcional)"],
               recipeTime: "45 min",
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
               description: "salmao",
               ingredients: ["Salmão:", "- 1 filé de salmão sem pele", "- 1 colher de chá de Azeite", "- 1/4 dentes de alho picados finamente", "- 1 colher de chá de pimenta", "- 1 colher de chá de sal", "- 1/4 de limão", "Arroz de brócolis:", "- 1 colher de sopa de azeite", "- 1/2 dente de alho picado", "- 1/4 de cebola picada", "- 1/2 xícara de arroz", "- Água suficiente para cobrir o arroz", "- 1/2 maço de brócolis"],
               recipeTime: "45 min",
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
               description: "bolo ",
               ingredients: ["- 3 ovos","- 100g de manteiga", "- 180g de açúcar", "- 250g de Nescau", "- 1 xícara de farinha de trigo"],
               recipeTime: "45 min",
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

    public static let HardRecipes : [Recipe] = [
        Recipe(name: "Bife acebolado",
               image: "bife acebolado",
               description: "bife com cebola",
               ingredients: ["Arroz:", "- 2 colheres de sopa de azeite", "- 1/2 dente de alho picado", "- 1/4 de cebola picada", "- 1/2 xícara de arroz", "- Água suficiente para cobrir o arroz" ,"Feijão:" ,"- 50 g de feijão-preto", "- 1/2 colheres de sopa de óleo", "- 1/4 cebola picada", "- 1/2 dentes de alho amassados", "- 1 xícaras chá de água (200 ml)", "- 1/2 sachê de Tempero de sua escolha", "- 1 colher de chá de sal", "Couve refogada:", "- 50g de couve", "- 1/2 dente de alho picado", "- 1/4 de cebola picada", "- 1 colher sopa cheia de óleo", "- 1 colher de chá de sal", "Farofa:", "- 100g de farinha de mandioca", "- 1/2 kg cebola grande fatiada", "- 50g colheres de manteiga", "- 1 colher de chá de sal", "- 1 colher de chá de pimenta", "Bife acebolado:", "- 100g de contrafilé (ou outro bife de sua preferência)", "- 1/2 tablete de caldo de carne", "- 1/2 xícara de chá de água quente", "- 1 colher de chá de azeite", "- 1/4 de cebola em rodelas"],
               recipeTime: "45 min",
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
               description: "massa de empada",
               ingredients: ["Massa:" ,"- 140g de manteiga", "- 1 ovo", "- 220g de farinha de trigo", "- 2g de fermento em pó", "Recheio:", "- 650g de peito de frango cozido e desfiado", "- 1 lata de molho de tomate", "- ¼ xícara de azeitonas pretas picadas (opcional)", "- 1 cebola média fatiada", "- 1 colher de sopa de azeite", "- 2 colheres de Sal", "- 2 colheres de pimenta", "- 1 tablete de galinha", "- 2 dentes de alho amassados", "- 400g de requeijão", "Finalização:", "- 1 ovo batido"],
               recipeTime: "45 min",
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
    
    public func getIngredients() -> [String] {
        let ingredients = self.ingredients
        
        let listIngredients = ingredients.split(separator: "\n ")
        let listIgts: [String] = listIngredients.map({ String($0) })
        
        
        let pureIngredients: [String] = listIgts.map({ elem in
            let elems = elem.split(separator: " de ")
            let strElems =  elems.map({ String($0) })
            
            return strElems[1...].joined(separator: " de ")
            
        })
        let nonEmptyIngredients = pureIngredients.filter({ $0 != ""})
        
        return nonEmptyIngredients
    }
    
    var namedIngredients: String {
        let ingredients = getIngredients()
        
        let text = ingredients.joined(separator: ", ")
        
        let firstLetter = text.prefix(1).capitalized
        let remainingLetter = text.dropFirst()
        return firstLetter + remainingLetter
        
    }
   
}
