//
//  Teste.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import SwiftUI

struct Teste: View {
    var wallet: Wallet =  Wallet.instance
    var body: some View {
        Button("Aumenta!"){
            wallet.add()
        }
        .padding()
        Button("Carrega!"){
            print(wallet.coins)
        }
        Text("Você tem \(wallet.coins) moedas!! ")
    }
}

//struct Teste_Previews: PreviewProvider {
//    static var previews: some View {
//        Teste()
//    }
//}
