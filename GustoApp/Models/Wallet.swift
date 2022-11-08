//
//  Wallet.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import Foundation


class Wallet: ObservableObject {
    static let instance = Wallet()
    
    private init(){
        self.coins = userDefaults.object(forKey: "myCoins") as? Int ?? 0
        self.receita = userDefaults.object(forKey: "myReceita") as? Int ?? 0
    }
    
    private let userDefaults = UserDefaults.standard
    private(set) var coins : Int = 0
    private(set) var receita : Int = 0
    
    private(set) var cupons: [Cupom] = []

    func addFiveCoins(newCoins: Int = 500){
        self.objectWillChange.send()
        self.coins += newCoins
        userDefaults.set(self.coins, forKey: "myCoins")
    }
    
    func addReceita(newReceita: Int = 1){
        self.objectWillChange.send()
        self.receita += newReceita
        userDefaults.set(self.receita, forKey: "myReceita")
    }
    
    func subtract(coins : Int){
        self.objectWillChange.send()
        self.coins -= coins
        userDefaults.set(self.coins, forKey: "myCoins")
    }
    
    /// Checa se da para comprar um cupom, se da
    ///  adiciona na lista de cupons e retorna true
    ///  retorna false c.c.
    func buy(cupom: Cupom) -> Bool {
        if self.hasMoney(for: cupom) {
            print(cupom)
            subtract(coins: cupom.custo)
            
            self.cupons.append(cupom)
            return true
        }
        return false
    }
    
    func hasMoney(for cupom: Cupom) -> Bool {
        return self.coins >= cupom.custo
    }
    
    func getCoins() -> Int {
        return self.coins
    }
    func getReceita() -> Int{
        return self.receita
    }
}
