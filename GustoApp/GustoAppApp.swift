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
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        AppData.loadData()
    }
    var body: some Scene {
        WindowGroup {
//            ReceitasView(recipe: Recipe.EasyRecipes[0])
            MainView()
                .environmentObject(recipes)
                .onChange(of: scenePhase) { newPhase in
                    if newPhase == .inactive {
                        AppData.shared.saveData()
                    }
                    if newPhase == .background {
                        AppData.shared.saveData()
                    }
                    
                }
        }
    }
}
