//
//  FlowInterface.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 17/10/22.
//

import SwiftUI


//Onboarding
struct Onboarding_View: View{
    
    @Binding var shouldShowOnboarding: Bool
    
    var receita: Recipe
    
    var body: some View{
        ZStack{
            Color.corDeFundo
                .padding(.bottom, -40)
            TabView {
                ForEach(receita.instructions) { page in
                    PageView(
                        content: page,
                        shouldShowOnboarding: $shouldShowOnboarding
                    )
                }
            } .overlay(alignment: .top) {
                
                Button {
                    self.shouldShowOnboarding = false
                    print("Click")
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.corTextoPasso)
                    
                }
                .buttonStyle(.plain)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 40)
                .padding(.top, 80)
                
            }.frame(width: UIScreen.main.bounds.width)
                .onAppear {
                    print(receita.name)
                }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .padding(.bottom, 40)
        
        
    }
    
}




struct PageView: View{
    var content: PageViewContent
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View{
        
        
        VStack{
            
            Text(content.title)
                .bold()
                .font(.system(size: 40))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(Color.corTextoPasso)
            
//            Image(content.imageName)
//                .resizable()
//                .padding()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 150)
//
            if content.showsDismissButton{
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Terminar Receita")
                        .font(.custom("SulSansTest-Bold", size: 50, relativeTo: .title))
                        .foregroundColor(.white)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 10)
                        .background (Color.corTextoPasso)
                        .clipShape (Capsule())
                    
                })
                .buttonStyle(.plain)
                
            }
            
        }.padding(.bottom, 80)
    }
}



