//
//  CuponsView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct MyCuponsView: View {
    @ObservedObject var wallet: Wallet =  Wallet.instance
    @State private var showingAlert = false
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
            ZStack{
                Color(red: 1, green: 247/255,blue: 238/255)
                    .ignoresSafeArea()
                VStack(spacing: 25){
                    ZStack{
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6.5 )
                        Text("Você realizou \(wallet.getReceita()) receitas, seu saldo é de \(wallet.getCoins()) moedas. Troque por mais cupons da próxima vez que usar o Gustô!")
                            .foregroundColor(Color("ColorWine"))
                            .font(Font.headline.weight(.bold))
                            .padding()
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height / 5.5 )
                            .overlay(alignment: .bottomLeading){
                                HStack{
                                    Text("Desconto de R$5, a partir de compras de R$40")
                                        .font(Font.custom("Futura",size: 14))
                                        .foregroundColor(.gray)
                                } .padding(.leading, 30)
                                    .padding(.bottom, 10)
                            }
                        Group{
                            VStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                                    .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height / 8 )
                            }
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color(red: 251/255, green: 216/255, blue: 141/255))
                                        .frame(width: UIScreen.main.bounds.width/1.55, height: UIScreen.main.bounds.height / 8.5 )
                                    
                                    Button("R$5"){
                                        //wallet.add()
//                                        showingAlert = true
                                    } //.alert("Confirmação", isPresented: $showingAlert){
                                        //Button("Trocar"){}
                                        //Button("Cancel", role: .cancel){}
//                                    }
                                        .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                                        .font(Font.custom("Futura",size: 35))
                                        .padding()
                                }
                            }
                        } .padding(.bottom, 30)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height / 5.5 )
                            .overlay(alignment: .bottomLeading){
                                HStack{
                                    Text("Desconto de R$12, a partir de compras de R$100")
                                        .font(Font.custom("Futura",size: 14))
                                        .foregroundColor(.gray)
                                } .padding(.leading, 30)
                                    .padding(.bottom, 10)
                            }
                        Group{
                            VStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                                    .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height / 8 )
                            }
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color(red: 251/255, green: 216/255, blue: 141/255))
                                        .frame(width: UIScreen.main.bounds.width/1.55, height: UIScreen.main.bounds.height / 8.5 )
                                    Button("R$12"){
                                        
                                    }
                                        .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                                        .font(Font.custom("Futura",size: 35))
                                }
                            }
                        } .padding(.bottom, 30)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height / 7.5 )
                            .overlay(alignment: .bottomTrailing){
                            }
                        HStack{
                            Image("coin")
                                .resizable()
                                .frame(width: 80, height: 80)
                            Group{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color(red: 169/255, green: 38/255, blue: 87/255))
                                        .frame(width: UIScreen.main.bounds.width/1.9, height: UIScreen.main.bounds.height / 11 )
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(red: 215/255, green: 153/255, blue: 177/255))
                                            .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height / 12 )
                                        VStack{
                                            Text("\(wallet.getCoins()) moedas")
                                                .foregroundColor(Color(red: 169/255, green: 38/255, blue: 87/255))
                                                .font(Font.custom("Futura",size: 22))
                                            Text("(\(wallet.getReceita()) receitas realizadas)")
                                                .foregroundColor(Color(red: 169/255, green: 38/255, blue: 87/255))
                                                .font(Font.custom("Futura",size: 16))
                                        }
                                    }
                                }
                            }
                        } .padding(.trailing, 30)
                    }
                    
                    Spacer()
                } .padding(.top, 20)
                
                
                    .safeAreaInset(edge: .top) {
                        ZStack {
                            Color("ColorWine")
                                .ignoresSafeArea(edges: .top)
                                .padding(.bottom)
                            Text("Meus Cupons")
                                .font(Font.custom("Futura",size: 35))
                                .foregroundColor(Color("ColorYellow"))
                                .padding(20)
                        }.frame(height: 35)
                    }
            }
            .navigationBarBackButtonHidden(true)
            .overlay(alignment: .topTrailing){
                HStack {
                    Button {
                        dismiss()
                        shouldShowOnboarding = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.corRosa, Color.corDeFundo)
                            
                            .padding(.leading, 20)
                            .padding(.top, 10)
                        Spacer()
                    }
                    .buttonStyle(.plain)
                }
            }
    }
}

struct MyCuponsView_Previews: PreviewProvider {
    static var previews: some View {
        MyCuponsView()
    }
}

