//
//  FirstView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 20/10/22.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("ColorWine")
                    .ignoresSafeArea()
                VStack{
                    Image("logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, alignment: .center)
                        .padding()
                    NavigationLink(destination: MainView(), label: {
                        Text("Cadastrar")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color("CorStartButton"))
                            .cornerRadius(10)
                        
                    })
                }
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
