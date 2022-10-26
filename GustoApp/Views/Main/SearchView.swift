//
//  SearchView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 19/10/22.
//

import SwiftUI
import UIKit

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ZStack{
            NavigationView{
                ScrollView(showsIndicators: false) {
                    RecipeList(searchText: $searchText)
                        .frame(maxWidth: .infinity)
                        .navigationBarTitleDisplayMode(.inline)
                        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
                        .padding(.vertical)
                }
                .navigationViewStyle(.stack)
                .navigationTitle("Busca")
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Busca")
                            .font(.custom("SulSansTest-Bold", size: 35, relativeTo:.largeTitle))
                            .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 4)
                            .foregroundColor(Color("ColorWine"))
                    }
                }.frame(maxWidth: .infinity)
                    .background(.white)
                    .toolbarBackground(
                        Color("ColorYellow"),
                        for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
            }
        }
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}
