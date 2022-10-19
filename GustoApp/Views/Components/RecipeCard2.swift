//
//  RecipeCard2.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 18/10/22.
//

import SwiftUI

struct RecipeCard2: View {
    @State var recipe : Recipe
    
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color(.white))
                    .frame(width: 246, height: 273, alignment: .center)
                    .shadow(color: Color.black.opacity(0.5), radius: 6, x: 0, y: 5)
                    .overlay(){
                        ZStack{
                            VStack{
                                Text(recipe.name)
                                    .font(.headline)
                                    .foregroundColor(Color("ColorWine"))
                                    .multilineTextAlignment(.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 10)
                                    
                            }.padding(.top,120)
                            VStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                    Image(systemName: "clock")
                                        .foregroundColor(.gray)
                                    Text(recipe.recipeTime)
                                        .foregroundColor(.gray)
                                        .font(Font.custom("Futura",size: 13))
                                        .padding(.trailing)
                                }.padding(.bottom,10)
                            }
                        }
                    }
                
            }
            Image(recipe.image)
                .resizable()
                .frame(width: 222, height: 170, alignment: .top)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.top,8)
        }
    }
    
    
    struct RecipeCard2_Previews: PreviewProvider {
        static var previews: some View {
            RecipeCard2(recipe: Recipe.MediumRecipes[0])
        }
    }
}