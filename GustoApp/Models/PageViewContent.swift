//
//  PageViewContent.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 24/10/22.
//

import Foundation

struct PageViewContent: Identifiable, Codable {
    // TODO:  Resolver
    var id = UUID()
    let title: String
    let showsDismissButton: Bool
    
}

