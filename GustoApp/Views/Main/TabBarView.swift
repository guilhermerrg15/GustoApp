//
//  TabBarView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 19/10/22.
//

import SwiftUI
import UIKit

struct TabBarView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
   
            SearchView()
                .tabItem {
                    Label("Busca", systemImage: "magnifyingglass")
                }
            
            ProfileView()
                .tabItem {
                    Label("Conta", systemImage: "person")
                }
            
        } .onAppear() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .white
            UITabBar.appearance().scrollEdgeAppearance = appearance
            UITabBar.appearance().standardAppearance = appearance
        }
    }
}

