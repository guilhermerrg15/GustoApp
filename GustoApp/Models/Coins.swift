//
//  Coins.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 24/10/22.
//

import Foundation
import GameKit

class Wallet {
    static let instance = Wallet()
    
    private init(){
        self.coins = userDefaults.object(forKey: "myCoins") as? Int ?? 0
    }
    
    private(set) var coins : Int = 0
    
    private let userDefaults = UserDefaults.standard

    func add(newCoins: Int = 10){
        self.coins += newCoins
        userDefaults.set(self.coins, forKey: "myCoins")
    }
    
    func getCoins() -> Int {
        return self.coins
    }
}
