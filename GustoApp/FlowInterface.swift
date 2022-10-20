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
    
    @State var pages: [PageViewContent] = [
        PageViewContent(
            title: "Coloque uma panela com água acima da metade para ferver",
            imageName: "panela no fogo",
            showsDismissButton: false),
        PageViewContent(
            title: "Assim que bolhas de ar começarem a se formar adicione o macarrão ",
            imageName: "adicione o macarrão",
            showsDismissButton: false),
        PageViewContent(
            title: "Deixe-o na panela pelo tempo indicado no pacote do macarrão comprado",
            imageName: "mantenha na panela",
            showsDismissButton: false),
        PageViewContent(
            title: "Em uma panela pequena coloque o azeite para esquentar (até começar a borbulhar)",
            imageName: "azeite na panela",
            showsDismissButton: false),
        PageViewContent(
            title: "Coloque a cebola picada e refogue por 2 minutos",
             imageName: "cebola e alho",
            showsDismissButton: false),
        PageViewContent(
            title: "Coloque o alho picado e refogue por mais 1 minuto",
            imageName: "cebola e alho",
            showsDismissButton: false),
        PageViewContent(
            title: "Nesta panela, coloque a carne para fritar",
            imageName: "carne moida cru",
            showsDismissButton: false),
        PageViewContent(
            title: "Tempere a carne já na panela com sal e pimenta",
            imageName: "carne moida cru",
            showsDismissButton: false),
        PageViewContent(
            title: "Mexa a carne para dourar de todos os lados",
            imageName: "mantenha na panela",
            showsDismissButton: false),
        PageViewContent(
            title: "Coloque na panela o molho de tomate e mexa-o até começar a ferver ",
           imageName: "molho de tomate na panela",
           showsDismissButton: false),
        PageViewContent(
            title: "Após o tempo do macarrão, escorra-o e coloque em um prato e Despeje o molho de tomate quente sobre o macarrão",
            imageName: "escorra o macarrao",
            showsDismissButton: false),
        PageViewContent(
            title: "Espalhe o queijo ralado por todo o prato",
            imageName: "macarrao a bolonhesa",
            showsDismissButton: true)

    ]
    var body: some View{
        ZStack{
            Color.corDeFundo
                .padding(.bottom, -40)
            TabView {
                ForEach(pages) { page in
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
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .padding(.bottom, 40)
        
       
    }
        
}
    

struct PageViewContent: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let showsDismissButton: Bool
    
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
                .padding()
                .foregroundColor(Color.corTextoPasso)
            
            Image(content.imageName)
                .resizable()
                .padding()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            if content.showsDismissButton{
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Terminar Receita")
                        .font(.system (size: 18, weight: .bold))
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



