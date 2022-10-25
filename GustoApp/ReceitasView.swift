//
//  ReceitasView.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 19/10/22.
//

import SwiftUI

struct ReceitaView: View {
    @Environment(\.dismiss) private var dismiss
    
    var receita: Recipe
    @State var shouldShowOnboarding: Bool = false
    
    var body: some View {
            ZStack(alignment: .top) {
//                VStack {
                    returnImage
                ScrollView {
//                }
                    Rectangle()
                        .fill(.clear)
                        .frame(height: 200)
//
//                        .frame(height: UIScreen.main.bounds.height)
//                        .padding(.top, -20)
                    VStack {
                        Text(receita.name)
//                            .bold()
                            .foregroundColor(Color.corRosa)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        //.multilineTextAlignment(.leading)
                            .padding(.horizontal)
                            .font(.custom("SulSansTest-Bold", size: 30, relativeTo: .title))
                            .padding(.vertical, 8)
                        HStack(spacing: 0) {
                            Image(systemName: "star")
                                .foregroundColor(Color.corAmarela)
                            
                            Image(systemName: "star")
                                .foregroundColor(Color.corAmarela)
                            
                            Image(systemName: "star")
                                .foregroundColor(Color.corAmarela)
                            
                            Image(systemName: "star")
                                .foregroundColor(Color.corAmarela)
                            
                            Image(systemName: "star")
                                .foregroundColor(Color.corAmarela)
                            
                            Image(systemName: "clock")
                                .padding(.leading,200)
                                .foregroundColor(Color.corCinza)
                            Text(receita.recipeTime)
                                .foregroundColor(Color.corCinza)
                                .font(.system(size: 15))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal).padding(.bottom,6)
                        Text(receita.description).multilineTextAlignment(.leading)
                            .foregroundColor(Color.corCinza)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.custom("SulSansTest-Regular", size: 16, relativeTo: .title))
                            .padding(.horizontal)
                            .padding(.bottom,8)
                        Rectangle()
                            .frame(height: 20)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color.corDeFundo)
                        
                        Text("Ingredientes:")
                            .bold()
                            .foregroundColor(Color.corTextoPasso)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        //.multilineTextAlignment(.leading)
                            .padding(.horizontal)
                            .font(.custom("SulSansTest-Bold", size: 20, relativeTo: .title))
                            .padding(.bottom, 8)
                        
                        ForEach(receita.ingredients, id: \.self) { ingredient in
                            Text(ingredient)
                                .foregroundColor(Color.corTextoPasso)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal,25)
                                .font(.custom("SulSansTest-Regular", size: 18, relativeTo: .title))
                                .padding(.vertical)
                        }
                        ZStack {
                            Rectangle()
                                .frame(height: 100)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color.corDeFundo)
                            VStack {
                                Button {
                                    shouldShowOnboarding.toggle()
                                } label: {
                                    Text("Começar receita")
                                        .bold()
                                        .foregroundColor(Color.corRosa)
                                        .frame(maxWidth: 400, alignment: .center)
                                        .font(.system (size: 30))
                                    //.padding(.horizontal, 100)
                                        .padding(.vertical, 10)
                                        .background (Color.corAmarela)
                                        .clipShape (Capsule())
                                }
                                .buttonStyle(.plain)
                                .frame(width: UIScreen.main.bounds.width)
                                .fullScreenCover(isPresented: $shouldShowOnboarding) {
                                    Onboarding_View(shouldShowOnboarding: $shouldShowOnboarding, receita: self.receita)
                                        .ignoresSafeArea()
                                }
                            }
                            
                        }
                        Spacer()
                    }
//                    .padding(.top, 20)
                    .background {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.white)
                    }
                
                .navigationBarHidden(true)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
//                .padding(.top, 200)
//            .background(Color.red)
            .ignoresSafeArea()
            
        }
            .overlay(alignment: .topTrailing){
                HStack {
                    Button {
                        dismiss()
                        shouldShowOnboarding = false
                        print("Click1")
                    } label: {
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .foregroundColor(Color.corRosa)
                            .padding(.leading, 20)
                            .padding(.top, 60)
                        Spacer()
                    }
                    .buttonStyle(.plain)
                }
            }
    }
    var returnImage: some View {
        Image(receita.image)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity)
            .frame(height: 200 + 20)
            
    }
}


//fazer barra home
