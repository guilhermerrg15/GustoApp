//
//  PageViewContent.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 24/10/22.
//

import Foundation

struct PageViewContent: Identifiable, Codable {
    // TODO:  Resolver
    let id = UUID()
    let title: String
    //let imageName: String
    let showsDismissButton: Bool
    
}

