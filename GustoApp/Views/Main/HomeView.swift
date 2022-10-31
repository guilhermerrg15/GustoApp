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
        print("AA")
        return recipes.easyRecipe.filter({$0.hasCompleted == true}).count >= 1
    }
    
     var isHardActive: Bool {
        print("BB")
        return recipes.mediumRecipe.filter({$0.hasCompleted == true}).count >= 1
    }
    
    var body: some View {
        ZStack{
            Color.corDeFundo
            ScrollView{
                VStack{
                    ZStack {
                        Color("ColorYellow")
                        Text("Básico")
                            .foregroundColor(Color("ColorWine"))
                            .font(Font.custom("Futura",size: 25))
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
                        Color("ColorYellow")
                        Text("Intermediário")
                            .foregroundColor(Color("ColorWine"))
                            .font(Font.custom("Futura",size: 25))
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
                        Color("ColorYellow")
                        Text("Avançado")
                            .foregroundColor(Color("ColorWine"))
                            .font(Font.custom("Futura",size: 25))
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
                    Color("ColorWine")
                        .ignoresSafeArea(edges: .top)
                        .padding(.bottom)
                    Text("Receitas")
                        .font(Font.custom("Futura",size: 35))
                        .foregroundColor(Color("ColorYellow"))
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
