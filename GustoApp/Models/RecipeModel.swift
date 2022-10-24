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

class AllRecipes: ObservableObject {
    @Published var easyRecipe: [Recipe] = [
        Recipe(name: "Macarrão com Bolonhesa",
               image: "macarrao",
               ingredients: "150g de macarrão\n 100g de carne moída\n 150 ml de molho de tomate\n 1 dente de alho picado\n 1/2 cebola picada\n 50g de queijo ralado picado\n 1 colher de sopa Azeite extra-virgem\n 1 colher de chá de pimenta\n 1 colher de chá de sal",
               recipeTime: "45 min",
               level: "Básico"),
        
        Recipe(name: "Omelete de queijo e presunto",
               image: "omelete",
               ingredients: "3 fatias de queijo\n 2 fatias de presunto\n 2 ovos\n 2 colheres de manteiga\n 1 colher de chá de orégano (opcional)\n 1 colher de café de sal",
               recipeTime: "10 min",
               level: "Básico"),
        
        Recipe(name: "Crepioca de Frango",
               image: "crepioca",
               ingredients: "Massa: 1 ovo 1 clara de ovo 2 colheres de sopa de tapioca 1 colher de sopa de leite\n Recheio: 1 filé de peito de frango 2 colheres de sopa cheias de requeijão 1/2 cebola picada 1 colher de chá de pimenta 2 colheres de chá de sal 2 colheres de chá de orégano 2 colheres de chá de azeite",
               recipeTime: "15 min",
               level: "Básico"),
        
        Recipe(name: "Sopa de legumes",
               image: "sopa",
               ingredients: " 1 colher de chá  de óleo\n 1/4 de cebola ralada\n 1/2 dente de alho amassado\n 1/4 cenoura média em rodelas\n 1 batatas em cubos\n 1/2 tomates sem pele e sem sementes, picados\n 1/2 envelope de MAGGI® Sopa de Carne com Conchinhas\n 1/2 xícara de água fria",
               recipeTime: "15 min",
               level: "Básico"),
        
        Recipe(name: "Strogonoff de Frango",
               image: "strogonoff",
               ingredients: "Strogonoff:\n 100g de peito de frango cortado em cubos ou tiras\n 1/4 de cebola picada\n 1/2 dente de alho picado\n 1/2 colher de sopa de manteiga\n 1/2 caixa de creme de leite\n 1 colher de sopa de mostarda (opcional)\n 1 colher de sopa de molho de tomate\n 2 colheres de sopa de ketchup\n 1 colher de chá de pimenta\n 1 colher de chá de sal\n Arroz:\n 2 colheres de sopa de azeit\n 1/2 dente de alho picad\n 1/4 de cebola picad\n 1/2 xícara de arro\n Água suficiente para cobrir o arroz\n extra:\n batata palha",
               recipeTime: "30 min",
               level: "Básico"),
    ]
    @Published var mediumRecipe: [Recipe] = [
        Recipe(name: "Bife com molho madera",
               image: "bifeMadera",
               ingredients: "Arroz: 2 colheres de sopa de azeite\n 1/2 dente de alho\n 1/4 de cebola\n 1 xícara de arroz\n Água suficiente para cobrir o arroz\n 1/2 caixa de creme de leite\n 50g de queijo mussarela\n 1 colher de chá noz moscada\n 25 g de queijo parmesão\n Bife:\n 1 colher de sopa de manteiga\n 1 file mignon grande\n 1 colher de chá de pimenta\n 1 colher de chá de sal\n Molho madeira:\n 40 g de farinha de trigo\n 1 colher de sopa de manteiga\n 1 colher de chá de sal\n 80 ml de vinho madeira\n 250 ml de caldo de carne\n 1 colher de chá de mostarda\n champignon (opcional)",
               recipeTime: "60 min",
               level: "Intermediário"),
        
        Recipe(name: "Salmão Grelhado",
               image: "salmao",
               ingredients: "Salmão:\n 1 filés de salmão sem pele\n 1 colher de chá de Azeite\n 1/4 dentes de alho picados finamente\n 1 colher de chá de pimenta\n 1 colher de chá de sal\n 1/4 de limão\n Arroz de brócolis:\n 1 colher de sopa de azeite\n 1/2 dente de alho picado\n 1/4 de cebola picada\n 1/2 xícara de arroz\n Água suficiente para cobrir o arroz\n 1/2 maço de brócolis",
               recipeTime: "2h e 30 min",
               level: "Intermediário"),
        
        Recipe(name: "Brownie",
               image: "brownie",
               ingredients: " 3 ovos\n 100g de manteiga\n 180g de açúcar\n 250g de Nescau\n 1 xícara de farinha de trigo",
               recipeTime: "40 min",
               level: "Intermediário"),
    ]
    @Published var hardRecipe: [Recipe] = [
        Recipe(name: "Bife acebolado",
               image: "bifeAcebolado",
               ingredients: "Arroz:\n 2 colheres de sopa de azeite\n 1/2 dente de alho picado\n 1/4 de cebola picada\n 1/2 xícara de arroz\n Água suficiente para cobrir o arroz\n Feijão:\n 50 g de feijão-preto\n 1/2 colheres de sopa de óleo\n 1/4 cebola picada\n 1/2 dentes de alho amassados\n 1 xícaras chá de água (200 ml)\n 1/2 sachê de Tempero de sua escolha\n 1 colher de chá de sal\n Couve refogada:\n 50g de couve\n 1/2 dente de alho picado\n 1/4 de cebola picada\n 1 colher sopa cheia de óleo\n 1 colher de chá de sal\n Farofa:\n 100g de farinha de mandioca\n 1/2 kg cebola grande fatiada\n 50g colheres de manteiga\n 1 colher de chá de sal\n 1 colher de chá de pimenta\n Bife acebolado:\n 100g de contrafilé (ou outro bife de sua preferência)\n 1/2 tablete de caldo de carne\n 1/2 xícara de chá de água quente\n 1 colher de chá de azeite\n 1/4 de cebola em rodelas",
               recipeTime: "1h e 20 min",
               level: "Difícil"),
        
        Recipe(name: "Empadão de Frango",
               image: "empadao",
               ingredients: "Massa:\n 140g de manteiga\n 1 ovo\n 220g de farinha de trigo\n 2g de fermento em pó\n Recheio:\n 650g de peito de frango cozido e desfiado\n 1 lata de molho de tomate\n ¼ xícara de azeitonas pretas picadas (opcional)\n 1 cebola média fatiada\n 1 colher de sopa de azeite\n 2 colheres de Sal\n 2 colheres de pimenta\n 1 tablete de galinha\n 2 dentes de alho amassados\n 400g de requeijão\n Finalização:\n 1 ovo batido",
               recipeTime: "2h",
               level: "Difícil")
    ]

}

class Recipe: ObservableObject, Identifiable {
    static var lastId = 0
    let id:Int
    let name : String
    let image : String
    let ingredients : String
    let recipeTime : String
    let level : Level.RawValue
    @Published var favorites : Bool {
        didSet {
            print("Alterou porra!", name, favorites)
        }
    }
    
    init(name: String, image: String, ingredients: String, recipeTime: String, level: Level.RawValue) {
        self.id = Recipe.lastId
        self.name = name
        self.image = image
        self.ingredients = ingredients
        self.recipeTime = recipeTime
        self.level = level
        self.favorites = false
        Recipe.lastId += 1
    }
}


extension Recipe{
    
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
