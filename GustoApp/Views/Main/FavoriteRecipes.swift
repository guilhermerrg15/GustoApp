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
            Color.corDeFundo
            ScrollView{
                VStack{
                    ZStack {
                        Color.corAmarela
                        Text("Básico")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Medium", size: 25, relativeTo: .title))
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
                        Color.corAmarela
                        Text("Intermediário")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Medium", size: 25, relativeTo: .title))
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
                        Color.corAmarela
                        Text("Avançado")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Medium", size: 25, relativeTo: .title))
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
                    Color.corRosa
                        .ignoresSafeArea(edges: .top)
                        .padding(.bottom)
                    Text("Minhas Receitas")
                        .font(.custom("SulSansTest-Medium", size: 25, relativeTo: .title))
                        .foregroundColor(Color.corAmarela)
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
