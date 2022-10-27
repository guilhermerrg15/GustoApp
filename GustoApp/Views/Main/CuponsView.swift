//
//  CuponsView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct CuponsView: View {
    @ObservedObject var wallet: Wallet =  Wallet.instance
    
    var cupons: [Cupom] = Cupom.allCupons
    
    @State private var showingAlert = false
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 247/255,blue: 238/255)
                    .ignoresSafeArea()
                VStack(spacing: 25){
                    ZStack{
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6.5 )
                        HStack{
                            Image("coin")
                                .resizable()
                                .frame(width: 120, height: 120)
                            VStack{
                                Text("Troque suas moedas")
                                    .foregroundColor(Color("ColorWine"))
                                    .font(Font.custom("Futura",size: 22))
                                    .padding(5)
                                Text("1 receita: 5 moedas")
                                    .foregroundColor(.gray)
                                Text("10 moedas: 5 reais")
                                    .foregroundColor(.gray)
                                Text("20 moedas: 12 reais")
                                    .foregroundColor(.gray)
                            }
                        } .padding(.trailing)
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
                                    Button(cupons[0].texto){
                                        showingAlert = true
                                    } .alert("Confirmação", isPresented: $showingAlert){
                                        Button("Trocar"){
                                            let _ = wallet.buy(cupom: cupons[0])
                                        }
                                        Button("Cancel", role: .cancel){
                                            
                                        }
                                    }
                                        .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                                        .font(Font.custom("Futura",size: 35))
                                        .padding()
                                        .buttonStyle(.plain)
                                        .disabled(!wallet.hasMoney(for: cupons[0]))
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
//                                    .padding(.bottom)
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
                                    Button(cupons[1].texto){
                                        showingAlert = true
                                    } .alert("Confirmação", isPresented: $showingAlert){
                                        Button("Trocar"){
                                            let _ = wallet.buy(cupom: cupons[1])
                                        }
                                        Button("Cancel", role: .cancel){}
                                    }
                                        .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                                        .font(Font.custom("Futura",size: 35))
                                        .padding()
                                        .buttonStyle(.plain)
                                        .disabled(!wallet.hasMoney(for: cupons[1]))
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
                                Image(systemName: "arrow.right")
                                    .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                    .font(.system(size: 25))
                                    .padding(.bottom)
                                    .padding(.trailing, 10)
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
                                            NavigationLink(destination: MyCuponsView(), label: {
                                                Text("Meus cupons")
                                                    .foregroundColor(Color(red: 169/255, green: 38/255, blue: 87/255))
                                                    .font(Font.custom("Futura",size: 28))
                                            })
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
                            Text("Cupons")
                                .font(Font.custom("Futura",size: 35))
                                .foregroundColor(Color("ColorYellow"))
                                .padding(20)
                        }.frame(height: 35)
                    }
            }
        }
    }
}

struct CuponsView_Previews: PreviewProvider {
    static var previews: some View {
        CuponsView()
    }
}