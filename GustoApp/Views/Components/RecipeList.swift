//
//  RecipeList.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 19/10/22.
//

import SwiftUI

struct RecipeList: View {
    @Binding var searchText : String
    @EnvironmentObject var recipes: AllRecipes
    var body: some View {
        ScrollView{
            VStack{
                ForEach($recipes.easyRecipe) { $recipe in
                    if (searchText.isEmpty || recipe.name.lowercased().contains(searchText.lowercased())) {
                        RecipeCardSearch(recipe: recipe)
                    }
                }
                ForEach($recipes.mediumRecipe) { $recipe in
                    if (searchText.isEmpty || recipe.name.lowercased().contains(searchText.lowercased())) {
                        RecipeCardSearch(recipe: recipe)
                    }
                }
                ForEach($recipes.hardRecipe) { $recipe in
                    if (searchText.isEmpty || recipe.name.lowercased().contains(searchText.lowercased())) {
                        RecipeCardSearch(recipe: recipe)
                    }
                }
            }
        }
    }
}

//struct RecipeList_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeList(searchText: .constant(""), recipes: Recipe.EasyRecipes)
//    }
//}
