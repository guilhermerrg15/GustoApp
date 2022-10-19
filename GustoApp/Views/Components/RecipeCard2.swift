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
                    .frame(width: 210, height: 250, alignment: .center)
                    .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 30)
                    .overlay(){
                        ZStack{
                            VStack{
                                Text(recipe.name)
                                    .font(.headline)
                                    .foregroundColor(Color("ColorWine"))
                                //.frame(maxWidth: 110)
                                    .padding()
                            }.padding(.top,120)
                            VStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                    Image(systemName: "clock")
                                        .foregroundColor(.gray)
                                    Text(recipe.recipeTime)
                                        .foregroundColor(.gray)
                                        .font(Font.custom("Futura",size: 14))
                                        .padding(.trailing)
                                }.padding(.bottom,10)
                            }
                        }
                    }
                
            }
            Image(recipe.image)
                .resizable()
                .frame(width: 160, height: 160, alignment: .top)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
    
    
    struct RecipeCard2_Previews: PreviewProvider {
        static var previews: some View {
            RecipeCard2(recipe: Recipe.MediumRecipes[2])
        }
    }
}
