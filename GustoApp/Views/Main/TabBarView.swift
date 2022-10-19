//
//  TabBarView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 19/10/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem {
                    Label("Menu", systemImage: "house")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
