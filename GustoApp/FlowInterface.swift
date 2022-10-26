//
//  FlowInterface.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 17/10/22.
//

import SwiftUI


//Onboarding
struct PassoaPasso: View{
    
    @Binding var shouldShowOnboarding: Bool
    @State var finalizar: Bool = true
    
    var receita: Recipe
    
    var body: some View{
        ZStack{
            Color.corDeFundo
                .padding(.bottom, -40)
            TabView {
                
                ForEach(receita.instructions) { page in
                    PageView(
                        content: page,
                        finalizar: $finalizar
                    )
                    
                }
            }
            
            .overlay(alignment: .center) {
                
                VStack {
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
                    
                    if !finalizar {
                        ParabensView()
                        
                    } else {
                        Spacer()
                    }
                }
                
                
            }.frame(width: UIScreen.main.bounds.width)
                .onAppear {
                    print(receita.name)
                }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: finalizar ? .always : .never))
        .padding(.bottom, 40)
        
        
    }
    
}




struct PageView: View{
    var content: PageViewContent
    @Binding var finalizar: Bool
    
    var body: some View{
        
        
        VStack{
            
            Text(content.title)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .foregroundColor(Color.corTextoPasso)
            
            //            Image(content.imageName)
            //                .resizable()
            //                .padding()
            //                .aspectRatio(contentMode: .fit)
            //                .frame(width: 150, height: 150)
            //
            if content.showsDismissButton{
                //                NavigationLink(destination: HomeView()) {
                //                    Text("Terminar Receita")
                //                        .font(.custom("SulSansTest-Bold", size: 20, relativeTo: .title))
                //                        .foregroundColor(.white)
                //                        .padding(.horizontal, 25)
                //                        .padding(.vertical, 10)
                //                        .background (Color.corTextoPasso)
                //                        .clipShape (Capsule())
                //                }
                Button(action: {
                    finalizar.toggle()
                    print("AAA")
                }, label: {
                    Text("Terminar Receita")
                        .font(.custom("SulSansTest-Bold", size: 20, relativeTo: .title))
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


struct ParabensView: View {
    
    @State var openCamera = false
    @State var imageSelected: UIImage?
    
    var body: some View {
        ZStack {
            Color.corDeFundo
                .padding(.bottom, -40)
            VStack{
                Text("Parábens!")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top,30) //aumentar letra
                    .multilineTextAlignment(.center)
                    .foregroundColor(.purple)
                
                Circle()
                    .foregroundColor(.pink)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/6 )
                    .padding(.top, 15)
                    .padding(.trailing, 8)
                Text("Você concluiu a receita!")
                    .font(.title)
                    .padding(.top,30)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.purple)
                ZStack(alignment: .bottomTrailing) {
                    Button {
                        openCamera.toggle()
                    } label: {
                        if let imageSelected {
                            Image(uiImage: imageSelected)
                                .resizable()
                                .scaledToFit()
                        } else {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 334, height: 239, alignment: .center)
                            
                        }
                    }
                }
                .sheet(isPresented: $openCamera){
                    ImagePicker(image: $imageSelected, sourceType: .camera)
                        .ignoresSafeArea()
                }
                Text("Tire uma foto do prato e ganhe seu prêmio")
                    .font(.title)
                    .padding(.top,30) //aumentar letra
                    .multilineTextAlignment(.center)
                    .foregroundColor(.purple)
            }
            
        }
    }
}

