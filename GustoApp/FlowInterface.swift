//
//  FlowInterface.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 17/10/22.
//

import SwiftUI
import UIKit


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
    @State var fechar: Bool = false
    @State var openCamera = false
    @State var imageSelected: UIImage?
    @State var jaGanhou: Bool = false
    
    var body: some View {
        ZStack {
            Color.corDeFundo
                .padding(.bottom, -40)
            VStack{
                Text("Parabéns!")
                    .bold()
                    .font(.custom("SulSansTest-Bold", size: 50, relativeTo: .largeTitle))
                    .padding(.top,-10)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.corRosa)
                
                Circle()
                    .foregroundColor(Color.corRosa)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/6 )
                    .padding(.bottom, 10)
                    .padding(.trailing, 8)
                
                Text("Você concluiu a receita!")
                    .font(.custom("SulSansTest-Regular", size: 25, relativeTo: .headline))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.corRosa)
                
                ZStack(alignment: .bottomTrailing) {
                    Button {
                        if !jaGanhou {
                            openCamera.toggle()
                        }
                    } label: {
                        if let imageSelected {
                            Image(uiImage: imageSelected)
                                .resizable()
                                .scaledToFit()
                        } else {
                            Image("tirar foto")
                                .resizable()
                                .frame(width: 334, height: 239, alignment: .center)
                            
                        }
                    }.buttonStyle(.plain)
                }
                .sheet(isPresented: $openCamera){
                    ImagePicker(image: $imageSelected, sourceType: .camera)
                        .ignoresSafeArea()
                        .onDisappear {
                            if let _ = imageSelected  {
                                fechar.toggle()
                                jaGanhou = true
                            }
                        }
                }
                .sheet(isPresented: $fechar) {
                    CoinView(fechar: $fechar)
                        .presentationDetents([.medium])
                        .ignoresSafeArea()
                }
                if !jaGanhou {
                    Text("Tire uma foto do prato e ganhe seu prêmio")
                        .font(.custom("SulSansTest-Regular", size: 25, relativeTo: .headline))
                        .padding(.horizontal,20)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.corRosa)
                        .padding(.bottom,50 )
                    
                    
                }else{
                    
                    ShareLink(item: Image(uiImage: imageSelected!), preview: SharePreview("Foto da sua receita!",image: Image(uiImage: imageSelected!))) {
                        Text("Compartilhar")
                            .font(.custom("SulSansTest-Medium", size: 20, relativeTo: .title))
                            .foregroundColor(Color.corAmarela)
                            .padding(.horizontal, 100)
                            .padding(.vertical, 10)
                            .background (Color.corRosa)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                    .padding(.bottom)
                    .buttonStyle(.plain)
                }
            }
        }
    }
}
