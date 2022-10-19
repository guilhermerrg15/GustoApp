//
//  RecipeCard.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 17/10/22.
//

import SwiftUI

struct RecipeCard: View {
    @State var recipe: Recipe
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .frame(width: 190, height: 250, alignment: .center)
//                .padding(.top)
            Text(recipe.name)
                .foregroundColor(.red)
                .offset(x: 0 ,y: 160)

            VStack {
                Group {
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        //                        .overlay(alignment: .bottom){
                        //                            Text(recipe.name)
                        //                                .font(.headline)
                        //                                .foregroundColor(.white)
                        //                                .frame(maxWidth: 136)
                        //                        }
                    } placeholder: {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(.white.opacity(0.7))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                   
                }
            }
            
            .frame(width: 170, height: 180, alignment: .top)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(color: Color.blue.opacity(0.3), radius: 15, x: 0, y: 10)
                    .padding(.top)
//            VStack {
//                Text(recipe.name)
//                    .foregroundColor(.white)
//                    .padding(.top, 220)
////                    .padding(.trailing)
//            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.EasyRecipes[2])
    }
}
