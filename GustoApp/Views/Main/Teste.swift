//
//  Teste.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import SwiftUI

struct Teste: View {
    @ObservedObject var wallet: Wallet =  Wallet.instance
    @State private var showingAlert = false
    var body: some View {
        Button("Aumenta!"){
            wallet.addFiveCoins()
            showingAlert = true
        } .alert("important pessage", isPresented: $showingAlert){
            Button("First"){}
            Button("Second"){}
            Button("Third"){}
        }
        .padding()
        .foregroundColor(.white)
        .background(Color("ColorWine"))
        .clipShape(Capsule())
        
        Button("Carrega!"){
            print(wallet.coins)
        }
        HStack{
            Image("coin")
                .resizable()
                .frame(width: 120, height: 120)
            Text("\(wallet.getCoins())")
        }
    }
}

