//
//  FirstView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 20/10/22.
//

import SwiftUI

struct FirstView: View {
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView{
            ZStack{
                Color.corRosa
                    .ignoresSafeArea()
                VStack{
                    Image("logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, alignment: .center)
                        .padding()
                    NavigationLink(destination: MainView(), label: {
                        Text("Comecar")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.corAmarela)
                            .cornerRadius(10)

                        
                    })
                }
            }
        } .navigationBarBackButtonHidden(true)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
