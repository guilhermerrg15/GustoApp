//
//  CoinView.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 26/10/22.
//

import SwiftUI

struct CoinView: View {
    @Binding var fechar: Bool
    var body: some View {
        ZStack{
            Color.corRosa
            VStack {
                VStack{
                    Spacer()
                    Image("coin")
                        .resizable()
                        .frame(width: 169, height: 195, alignment: .center)
                    Text("Você ganhou 5 moedas!")
                        .font(.custom("SulSansTest-Bold", size: 55, relativeTo: .title))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.corAmarela)
                        .padding(.horizontal, UIScreen.main.bounds.width / 15)
                
                    Button {
                        fechar.toggle()
                        Wallet.instance.addFiveCoins()
                        Wallet.instance.addReceita()
                    } label: {
                        Text("Fechar")
                            .font(.custom("SulSansTest-Medium", size: 20, relativeTo: .title))
                            .foregroundColor(Color.corRosa)
                            .padding(.horizontal, 120)
                            .padding(.vertical, 10)
                            .background (Color.corAmarela)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                    }
                    .padding(.bottom)
                    .buttonStyle(.plain)
                    
                }
                Spacer()
            }

        }
        .interactiveDismissDisabled(true)
        .ignoresSafeArea()
        
    }
}

struct CoinView_Previews: PreviewProvider {
    static var previews: some View {
        CoinView(fechar: .constant(false))
    }
}
