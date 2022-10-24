//
//  GustoAppApp.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 11/10/22.
//

import SwiftUI

@main
struct GustoAppApp: App {
    @StateObject var recipes = AllRecipes()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(recipes)
        }
    }
}
