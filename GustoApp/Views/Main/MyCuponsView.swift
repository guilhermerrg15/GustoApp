//
//  CuponsView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct MyCuponsView: View {
    @State private var showingAlert = false
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    @Binding var geraCupom: [Int]
    var body: some View {
            ZStack{
                Color.corDeFundo
                    .ignoresSafeArea()
                VStack(spacing: 25){
                    ZStack{
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6.5 )
                        Text("Você realizou \(Wallet.instance.getReceita()) receitas, seu saldo é de \(Wallet.instance.getCoins()) moedas. Troque por mais cupons da próxima vez que usar o Gustô!")
                            .foregroundColor(Color.corRosa)
                            .font(.custom("SulSansTest-Medium", size: 18, relativeTo: .title))

                            .padding()
                        
                    }
                    ScrollView {
                        ForEach(geraCupom, id: \.self) { value in
                            if (value == 1) {
                                CupomPreviewView(geraCupom: .constant([]), cupom: Cupom.allCupons[0])
                            } else {
                                CupomPreviewView(geraCupom: .constant([]), cupom: Cupom.allCupons[1])
                            }
                        }
                        .disabled(true)
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
                                            .foregroundColor(Color.corRosa)
                                            .frame(width: UIScreen.main.bounds.width/1.9, height: UIScreen.main.bounds.height / 11 )
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 10)
                                                .foregroundColor(Color.corRosaClara)
                                                .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height / 12 )
                                            VStack{
                                                Text("\(Wallet.instance.getCoins()) moedas")
                                                    .foregroundColor(Color.corRosa)
                                                    .font(.custom("SulSansTest-Medium", size: 22, relativeTo: .title))
                                                Text("(\(Wallet.instance.getReceita()) receitas realizadas)")
                                                    .foregroundColor(Color.corRosa)
                                                    .font(.custom("SulSansTest-Medium", size: 16, relativeTo: .title))
                                            }
                                        }
                                    }
                                }
                            } .padding(.trailing, 30)
                    }
                   
  
                    }
                    
                    Spacer()
                } .padding(.top, 20)
                    .safeAreaInset(edge: .top) {
                        ZStack {
                            Color.corAmarela
                                .ignoresSafeArea(edges: .top)
                                .padding(.bottom)
                            Text("Meus Cupons")
                                .font(.custom("SulSansTest-Medium", size: 35, relativeTo: .title))
                                .foregroundColor(Color.corRosa)
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

