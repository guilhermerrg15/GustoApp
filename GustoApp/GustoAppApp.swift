//
//  GustoAppApp.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 11/10/22.
//

import SwiftUI

@main
struct GustoAppApp: App {
    @StateObject var recipes:AllRecipes = AllRecipes.instance
    
    init() {
        AppData.loadData()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(recipes)
        }
    }
}
