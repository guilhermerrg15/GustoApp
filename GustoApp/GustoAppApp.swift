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
    @StateObject var flowOrganizer: FlowOrganizer = FlowOrganizer()

    
    init() {
        AppData.loadData()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
                .environmentObject(recipes)
                .environmentObject(flowOrganizer)
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
