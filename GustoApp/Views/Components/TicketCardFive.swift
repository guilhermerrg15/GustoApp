//
//  TicketCard.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct TicketCardFive: View {
    @ObservedObject var wallet: Wallet =  Wallet.instance
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            Color.corDeFundo
                .ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                    .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height / 5.5 )
                    .overlay(alignment: .bottomLeading){
                        HStack{
                            Text("Desconto de R$5, a partir de compras de R$40")
                                .font(Font.custom("SulSansTest-Medium",size: 14,relativeTo: .title))
                                .foregroundColor(.gray)
                        } .padding(.leading, 30)
                            .padding(.bottom,10)
                    }
            Group{
                VStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.corAmarela)
                        .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height / 8 )
                }
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.corAmarelaClara)
                            .frame(width: UIScreen.main.bounds.width/1.55, height: UIScreen.main.bounds.height / 8.5 )
                        
                        Button("R$5"){
                            wallet.addFiveCoins()
                            showingAlert = true
                        } .alert("Confirmação", isPresented: $showingAlert){
                            Button("Trocar"){}
                            Button("Cancel", role: .cancel){}
                        }
                        .foregroundColor(Color.corAmarela)
                        .font(Font.custom("SulSansTest-Medium",size: 35, relativeTo: .title))
                        .padding()
                    }
                }
                }.padding(.bottom, 30)
            } 
        }
    }
}

struct TicketCardFive_Previews: PreviewProvider {
    static var previews: some View {
        TicketCardFive()
    }
}
