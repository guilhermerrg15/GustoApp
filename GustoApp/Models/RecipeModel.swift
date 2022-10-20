//
//  RecipeModel.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 17/10/22.
//

import Foundation
import SwiftUI

enum Level: String, CaseIterable, Identifiable{
    var id : String{ self.rawValue}
    case easy = "Básico"
    case medium = "Intermediário"
    case hard = "Difícil"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name : String
    let image : String
//    let description : String
    let ingredients : String
//    let directions : String
    let level : Level.RawValue
//    let datePublished: String
}
/*
extension Recipe{
    public static let all : [Recipe] = [
    Recipe(name: "Macarrão com Bolonhesa",
           image: "https://www.imagensempng.com.br/wp-content/uploads/2021/08/Macarrao-bolonhesa-Png.png",
           ingredients: "150g de macarrão\n 100g de carne moída\n 150 ml de molho de tomate\n 1 dente de alho picado\n 1/2 cebola picada\n 50g de queijo ralado picado\n 1 colher de sopa Azeite extra-virgem\n 1 colher de chá de pimenta\n 1 colher de chá de sal",
           level: "Básico"),
    
    Recipe(name: "Omelete de queijo e presunto",
           image: "https://img2.gratispng.com/20180605/epc/kisspng-indian-omelette-ham-and-cheese-sandwich-bacon-omlettes-5b16338261f444.8443076315281816344012.jpg",
           ingredients: "3 fatias de queijo\n 2 fatias de presunto\n 2 ovos\n 2 colheres de manteiga\n 1 colher de chá de orégano (opcional)\n 1 colher de café de sal", level: "Básico"),
    
    Recipe(name: "Crepioca de Frango",
           image: "https://tribunademinas.com.br/wp-content/uploads/2019/11/crepioca-de-fricasse.jpg",
           ingredients: "Massa: 1 ovo 1 clara de ovo 2 colheres de sopa de tapioca 1 colher de sopa de leite\n Recheio: 1 filé de peito de frango 2 colheres de sopa cheias de requeijão 1/2 cebola picada 1 colher de chá de pimenta 2 colheres de chá de sal 2 colheres de chá de orégano 2 colheres de chá de azeite",
           level: "Básico"),
    
    Recipe(name: "Sopa de legumes",
           image: "https://w7.pngwing.com/pngs/47/72/png-transparent-congee-corn-soup-hot-and-sour-soup-manchow-soup-mixed-vegetable-soup-vegetable-soup-food-recipe.png",
           ingredients: " 1 colher de chá  de óleo\n 1/4 de cebola ralada\n 1/2 dente de alho amassado\n 1/4 cenoura média em rodelas\n 1 batatas em cubos\n 1/2 tomates sem pele e sem sementes, picados\n 1/2 envelope de MAGGI® Sopa de Carne com Conchinhas\n 1/2 xícara de água fria",
           level: "Básico"),
    
    Recipe(name: "Strogonoff de Frango",
           image: "https://chinezinho.com.br/wp-content/uploads/2020/02/strogonoff-frango-1.png",
           ingredients: "Strogonoff:\n 100g de peito de frango cortado em cubos ou tiras\n 1/4 de cebola picada\n 1/2 dente de alho picado\n 1/2 colher de sopa de manteiga\n 1/2 caixa de creme de leite\n 1 colher de sopa de mostarda (opcional)\n 1 colher de sopa de molho de tomate\n 2 colheres de sopa de ketchup\n 1 colher de chá de pimenta\n 1 colher de chá de sal\n Arroz:\n 2 colheres de sopa de azeit\n 1/2 dente de alho picad\n 1/4 de cebola picad\n 1/2 xícara de arro\n Água suficiente para cobrir o arroz\n extra:\n batata palha",
           level: "Básico"),
    
 Recipe(name: "Bife com molho madeira", image: , ingredients: <#T##String#>, level: <#T##Level.RawValue#>)
                                                                                                  
                                                                                                  ]
                                                                                                  }
*/
