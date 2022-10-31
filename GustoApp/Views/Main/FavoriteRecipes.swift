//
//  FavoriteRecipes.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import SwiftUI

struct FavoriteRecipes: View {
    @EnvironmentObject var recipes: AllRecipes
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack{
            Color(red: 1, green: 247/255,blue: 238/255)
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
                                if recipe.favorites {
                                    RecipeCard2(recipe: recipe)
                                }
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
                                if recipe.favorites {
                                    RecipeCard2(recipe: recipe)
                                }
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
                                if recipe.favorites {
                                    RecipeCard2(recipe: recipe)
                                }
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
        .navigationBarBackButtonHidden(true)
        .overlay(alignment: .topTrailing){
            HStack {
                Button {
                    dismiss()
                    shouldShowOnboarding = false
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.corRosa, Color.corDeFundo)
                        
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    Spacer()
                }
                .buttonStyle(.plain)
            }
        }
    }
}

struct FavoriteRecipes_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteRecipes()
    }
}
