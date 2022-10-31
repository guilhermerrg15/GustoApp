//
//  Cupom.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 27/10/22.
//

import Foundation


struct Cupom {
    var id: Int
    var valor: Int
    var custo: Int
    
    var texto: String {
        return "R$\(self.valor)"
    }
    
    static let allCupons: [Cupom] = [
        Cupom(id: 0, valor: 5, custo: 10),
        Cupom(id: 1, valor: 12, custo: 20),
    ]
}
