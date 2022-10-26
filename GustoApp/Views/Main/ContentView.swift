//
//  ContentView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RecipeCard2(recipe: Recipe.easyRecipes[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
