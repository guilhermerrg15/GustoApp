//
//  Coins.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import Foundation
import GameKit

class Wallet: ObservableObject {
    static let instance = Wallet()
    
    private init(){
        self.coins = userDefaults.object(forKey: "myCoins") as? Int ?? 0
        self.receita = userDefaults.object(forKey: "myReceita") as? Int ?? 0
    }
    
    private let userDefaults = UserDefaults.standard
    private(set) var coins : Int = 0
    private(set) var receita : Int = 0
    

    func addFiveCoins(newCoins: Int = 5){
        self.objectWillChange.send()
        self.coins += newCoins
        userDefaults.set(self.coins, forKey: "myCoins")
    }
    
    func addReceita(newReceita: Int = 1){
        self.objectWillChange.send()
        self.receita += newReceita
        userDefaults.set(self.receita, forKey: "myReceita")
    }
    
    func subtractTenCoins(newCoins : Int = 10){
        self.objectWillChange.send()
        self.coins -= newCoins
        userDefaults.set(self.coins, forKey: "myCoins")
    }
    
    func subtractTwentyCoins(newCoins : Int = 20){
        self.objectWillChange.send()
        self.coins -= newCoins
        userDefaults.set(self.coins, forKey: "myCoins")
    }
    
    
    func getCoins() -> Int {
        return self.coins
    }
    func getReceita() -> Int{
        return self.receita
    }
}
