//
//  RecipeCardSearch.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 20/10/22.
//

import SwiftUI

struct RecipeCardSearch: View {
    @State var recipe : Recipe
    @State var showRecipe: Bool = false
    
    
    var body: some View {
        
        ZStack(alignment: .leading){
            cardSearchUI

        }.onTapGesture {
            showRecipe = true
        }.fullScreenCover(isPresented: $showRecipe) {
            ReceitaView(receita: recipe)
        }
    }
    
    var cardSearchUI: some View {
            
            ZStack{
                VStack(alignment: .leading){
                    Text(recipe.name)
                        .font(.custom("SulSansTest-Bold", size: 22, relativeTo: .title2))
                        .foregroundColor(Color.corRosa)
                        .multilineTextAlignment(.leading)
                    HStack(alignment: .bottom){
                        Image(recipe.image)
                            .resizable()
                            .frame(width: 130, height: 108, alignment: .top)
//                            .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                        VStack(alignment:.leading){
                            Text("Ingredientes:")
                                .font(.custom("SulSansTest-Medium", size: 18, relativeTo: .title3))
                                .foregroundColor(Color.corCinza)
                            Text(recipe.allIngredients)
                                .font(.custom("SulSansTest-Regular", size: 12, relativeTo: .caption))
                                .foregroundColor(Color.corCinza)
                                .lineLimit(3)
                        }
                        Spacer()
                        HStack(spacing: 3){
                            Image(systemName: "clock") 
                                .foregroundColor(Color.corCinza)
                            Text(recipe.recipeTime)
                                .foregroundColor(Color.corCinza)
                                .font(Font.custom("SulSansTest-Medium",size: 13, relativeTo: .title))
                                .padding(.trailing,10)
                                
                        }
                    }
                } .padding(.leading,15)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(alignment: .topTrailing){
                Image(systemName: "heart")
                    .foregroundColor(Color.corTextoPasso)
                    .padding(.top, 5)
                    .padding(.trailing, 10)
                    .font(.system(size: 20))
            }.padding(.vertical)
            .background {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.25), radius: 6, x: 0, y: 0)
            } .padding(15)
        }
    
    
}

struct RecipeCardSearch_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardSearch(recipe: Recipe.easyRecipes[1])
    }
}
