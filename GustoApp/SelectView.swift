//
//  SelectView.swift
//  GustoApp
//
//  Created by Isabella Gomes  on 21/10/22.
//

import SwiftUI

struct SelectView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Recipe.easyRecipes) { receita in
                    NavigationLink {
                        ReceitaView(receita: receita)
                            .ignoresSafeArea()
                    } label: {
                        Text("\(receita.name)")
                            .padding()
                    }
                }
                ForEach(Recipe.MediumRecipes ) { receita in
                    NavigationLink {
                        ReceitaView(receita: receita)
                            .ignoresSafeArea()
                    } label: {
                        Text("\(receita.name)")
                            .padding()
                    }
                }
                ForEach(Recipe.HardRecipes ) { receita in
                    NavigationLink {
                        ReceitaView(receita: receita)
                            .ignoresSafeArea()
                    } label: {
                        Text("\(receita.name)")
                            .padding()
                    }
                }
            }
        }
        
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
    }
}
