//
//  HomeView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipes:AllRecipes
    @EnvironmentObject var flowOrganizer: FlowOrganizer
    
     var isMediumActive: Bool {
        return recipes.easyRecipe.filter({$0.hasCompleted == true}).count >= 1
    }
    
     var isHardActive: Bool {
        return recipes.mediumRecipe.filter({$0.hasCompleted == true}).count >= 1
    }
    
    var body: some View {
        ZStack{
            Color.corDeFundo
            ScrollView{
                VStack{
                    ZStack {
                        Color.corAmarela
                        Text("Básico")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Bold", size: 25, relativeTo:.largeTitle))
                            .frame(maxWidth: .infinity , alignment: .leading)
                            .padding(.leading)
                    }.frame(height: 50)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach($recipes.easyRecipe) { $recipe in
                                RecipeCard2(recipe: recipe)
                            
                            }
                        }
                        .padding()
                    }
                    
                    ZStack {
                        Color.corAmarela
                        Text("Intermediário")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Bold", size: 25, relativeTo:.largeTitle))
                            .frame(maxWidth: .infinity , alignment: .leading)
                            .padding(.leading)
                    }.frame(height: 50)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach($recipes.mediumRecipe) { $recipe in
                                RecipeCard2(recipe: recipe, active: isMediumActive)
                            }
                        }
                        .padding()
                    }
                    ZStack {
                        Color.corAmarela
                        Text("Avançado")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Bold", size: 25, relativeTo:.largeTitle))
                            .frame(maxWidth: .infinity , alignment: .leading)
                            .padding(.leading)
                    }.frame(height: 50)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach($recipes.hardRecipe) { $recipe in
                                RecipeCard2(recipe: recipe, active: isHardActive)
                            }
                        }
                        .padding()
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                
                ZStack {
                    Color.corRosa
                        .ignoresSafeArea(edges: .top)
                        .padding(.bottom)
                    Text("Receitas")
                        .font(.custom("SulSansTest-Bold", size: 35, relativeTo:.largeTitle))
                        .foregroundColor(Color.corAmarela)
                        .padding(20)
                }.frame(height: 65)
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
