//
//  RecipeCardSearch.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 20/10/22.
//

import SwiftUI

struct RecipeCardSearch: View {
    @State var recipe : Recipe
    var body: some View {
        ZStack(alignment: .leading){
            
            ZStack{
                VStack(alignment: .leading){
                    Text(recipe.name)
                        .font(Font.custom("Futura",size: 20))
                        .foregroundColor(Color("ColorWine"))
                        .multilineTextAlignment(.leading)
                    HStack(alignment: .bottom){
                        Image(recipe.image)
                            .resizable()
                            .frame(width: 160, height: 140, alignment: .top)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        VStack{
                            Text("Ingredientes")
                                .font(Font.custom("Futura",size: 15))
                                .foregroundColor(Color(red:111/255, green: 111/255, blue: 111/255))
                            Text(recipe.namedIngredients)
                                .font(Font.custom("Futura",size: 12))
                                .foregroundColor(.gray)
                                .lineLimit(3)
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "clock")
                                .foregroundColor(.gray)
                            Text(recipe.recipeTime)
                                .foregroundColor(.gray)
                                .font(Font.custom("Futura",size: 13))
                                .padding(.trailing)
                        }
                    }
                } .padding(.leading,15)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(alignment: .topTrailing){
                Image(systemName: "heart")
                    .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                    .padding(.top, 5)
                    .padding(.trailing, 5)
            }.padding(.vertical)
            .background {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .fill(Color(.white))
                    .shadow(color: Color.black.opacity(0.5), radius: 6, x: 0, y: 5)
            } .padding(15)
        }
    }
    
}

struct RecipeCardSearch_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardSearch(recipe: Recipe.easyRecipes[1])
    }
}
