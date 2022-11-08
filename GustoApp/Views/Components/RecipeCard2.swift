//
//  RecipeCard2.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 18/10/22.
//

import SwiftUI

struct RecipeCard2: View {
    
    @StateObject var recipe : Recipe
    @State var showRecipe: Bool = false
    @State var opacity: Bool = false
    var active: Bool = true
    @EnvironmentObject var flowOrganizer: FlowOrganizer
    
    var body: some View {
        
        ZStack(alignment: .leading){
            if (!active) {
                cardUI
                Color.corDeFundo.opacity( 0.5)
            } else {
                cardUI
            }
        }.onTapGesture {
            showRecipe = true
            flowOrganizer.navigateTo(.recipe)
        }.fullScreenCover(isPresented: $showRecipe) {
            ReceitaView(receita: recipe)
        }.disabled(!active)
       

    }

    var cardUI: some View {
        ZStack(alignment: .top){
            VStack{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color(.white))
                    .frame(width: 190, height: 215, alignment: .center)
                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 7)
                    .overlay(){
                        ZStack{
                            VStack{
                                Text(recipe.name)
                                    .font(.custom("SulSansTest-Bold", size: 15, relativeTo: .title))
                                    .foregroundColor(Color.corRosa)
                                    .multilineTextAlignment(.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading,10)
                                    .padding(.top)
                                    
                            }.padding(.top,80)
                            VStack{
                                Spacer()
                                HStack(spacing: 3){
                                    Spacer()
                                    Image(systemName: "clock")
                                        .foregroundColor(Color.corCinza)
                                    Text(recipe.recipeTime)
                                        .foregroundColor(Color.corCinza)
                                        .font(Font.custom("SulSansTest-Medium",size: 13, relativeTo: .title))
                                        .padding(.trailing)
                                }.padding(.bottom,10)
                            }
                        }
                    }
                
            }
            ZStack(alignment: .topTrailing){
                Image(recipe.image)
                    .resizable()
                    .frame(width: 172, height: 120, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .padding(.top,8)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.corDeFundo)
                    .frame(width: UIScreen.main.bounds.width/11, height: UIScreen.main.bounds.height / 28 )
                    .padding(.top, 15)
                    .padding(.trailing, 8)
                Image(systemName:recipe.favorites ? "heart.fill" : "heart")
                    .onTapGesture {
                        recipe.favorites.toggle()
                    }
                    .foregroundColor(Color.corRosa)
                    .padding(.top, 20)
                    .padding(.trailing, 11)
                    .font(.system(size: 24))
            }
        }
    }
}
    
//    struct RecipeCard2_Previews: PreviewProvider {
//        static var previews: some View {
//            RecipeCard2(recipe: Recipe.MediumRecipes[0])
//        }
//    }
//}
