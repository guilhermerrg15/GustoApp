//
//  RecipeList.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 19/10/22.
//

import SwiftUI

struct RecipeList: View {
    @Binding var searchText : String
    var recipes: [Recipe]
    var body: some View {
        ScrollView{
            VStack{
                ForEach(Recipe.easyRecipes) { recipe in
                    if (searchText.isEmpty || recipe.name.lowercased().contains(searchText.lowercased())) {
                        RecipeCardSearch(recipe: recipe)
                    }
                }
                ForEach(Recipe.MediumRecipes) { recipe in
                    if (searchText.isEmpty || recipe.name.lowercased().contains(searchText.lowercased())) {
                        RecipeCardSearch(recipe: recipe)
                    }
                }
                ForEach(Recipe.HardRecipes) { recipe in
                    if (searchText.isEmpty || recipe.name.lowercased().contains(searchText.lowercased())) {
                        RecipeCardSearch(recipe: recipe)
                    }
                }
            }
          //  .padding(.horizontal, 30)
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(searchText: .constant(""), recipes: Recipe.easyRecipes)
    }
}
