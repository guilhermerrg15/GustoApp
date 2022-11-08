//
//  Cupom.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 27/10/22.
//

import Foundation


struct Cupom: Identifiable {
    var id: Int
    var valor: Int
    var custo: Int
    var validoAPartirDe:Date
    var name: String
    var isValid:Bool {Date() >= validoAPartirDe }
    
    var texto: String {
        return "R$\(self.valor)"
    }
    
    static let allCupons: [Cupom] = [
        Cupom(id: 0, valor: 5, custo: 10, validoAPartirDe: Date(), name: "Desconto de R$5, a partir de compras de R$40")
    ]
}
