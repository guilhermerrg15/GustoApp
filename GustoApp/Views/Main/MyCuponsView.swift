//
//  CuponsView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct MyCuponsView: View {
//    @StateObject var wallet: Wallet =  Wallet.instance
    @State private var showingAlert = false
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    @Binding var geraCupom: [Int]
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
                        Text("Você realizou \(Wallet.instance.getReceita()) receitas, seu saldo é de \(Wallet.instance.getCoins()) moedas. Troque por mais cupons da próxima vez que usar o Gustô!")
                            .foregroundColor(Color("ColorWine"))
                            .font(Font.headline.weight(.bold))
                            .padding()
                        
                    }
                    ForEach(geraCupom, id: \.self) { cupom in
                        CupomPreviewView(showingAlert: .constant(false), geraCupom: .constant([]), cupom: Cupom.allCupons[0]) //Valor de teste... array com 1 elemento ???????????)
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
                                            Text("\(Wallet.instance.getCoins()) moedas")
                                                .foregroundColor(Color(red: 169/255, green: 38/255, blue: 87/255))
                                                .font(Font.custom("Futura",size: 22))
                                            Text("(\(Wallet.instance.getReceita()) receitas realizadas)")
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
//
//struct MyCuponsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyCuponsView()
//    }
//}
//
