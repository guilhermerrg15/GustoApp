//
//  ReceitasView.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 19/10/22.
//

import SwiftUI

struct ReceitasView: View {
    
    @State var shouldShowOnboarding: Bool = false
    
    var body: some View {
            NavigationView{
                ZStack{
                    Color.corDeFundo
                        .ignoresSafeArea()
                    
                    VStack {
                        VStack {
                            Image("macarrao")
                                .resizable()
                                .scaledToFit()
                                .ignoresSafeArea()
                                .overlay(alignment: .topTrailing){
                                    HStack {
                                        Button {
                                            self.shouldShowOnboarding = false
                                            print("Click1")
                                        } label: {
                                            Image(systemName: "arrow.backward")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 30)
                                                .foregroundColor(Color.corDeFundo)
                                                .padding(.leading, 8)
                                            Spacer()
                                            
                                        }
                                        .buttonStyle(.plain)
                                    }
                                }
                        }
                        
                        
                        Spacer()
                        VStack {
                            Button {
                                shouldShowOnboarding.toggle()
                            } label: {
                                Text("Comecar")
                                    .font(.system (size: 18, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 25)
                                    .padding(.vertical, 10)
                                    .background (Color.corTextoPasso)
                                    .clipShape (Capsule())
                                    .padding(.bottom)
                            }
                            
                        }.frame(width: UIScreen.main.bounds.width)
                            .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
                                Onboarding_View(shouldShowOnboarding: $shouldShowOnboarding).ignoresSafeArea()
                            })
                            .buttonStyle(.plain)
                    }
                }
            }
    }
}

struct ReceitasView_Previews: PreviewProvider {
    static var previews: some View {
        ReceitasView()
    }
}
