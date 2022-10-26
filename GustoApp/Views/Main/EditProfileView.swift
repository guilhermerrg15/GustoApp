//
//  EditProfileView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct EditProfileView: View {
    @Binding var username: String
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 247/255,blue: 238/255)
                    .ignoresSafeArea()
                VStack{
                    ZStack(alignment: .bottomLeading){
                        Image("profile")
                            .resizable()
                            .frame(width: 160, height: 160)
                            .clipShape(Circle())
                        Image(systemName: "pencil")
                            .frame(width: 60, height: 30)
                            .foregroundColor(.white)
                            .background(.black)
                            .clipShape(Circle())
                    } .padding(.top, 80)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/4)
                        Group{
                            VStack{
                                Text("Nome")
                                    .foregroundColor(Color("ColorWine"))
                                    .font(Font.custom("Futura",size: 20))
                                TextField("Digite seu nome", text: $username)
                                    .padding()
                                    .frame(width: 300, height: 50)
                                    .background(Color.black.opacity(0.05))
                                    .cornerRadius(10)
                                    .onSubmit {
                                        UserDefaults.standard.set(username, forKey: UserDefaultsKeys.username.rawValue)
                                    }
                            }
                        }
                    }
                    Spacer()
                }
                .safeAreaInset(edge: .top){
                    ZStack {
                        Color("ColorWine")
                            .ignoresSafeArea(edges: .top)
                            .padding(.bottom)
                        Text("Editar Perfil")
                            .font(Font.custom("Futura",size: 35))
                            .foregroundColor(Color("ColorYellow"))
                            .padding(20)
                    }.frame(height: 35)
                }
            }
        }
    }
}


struct DummyView: View {
    
    @State var username: String = "ABC"
    var body: some View {
        EditProfileView(username: $username)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        DummyView()
    }
}
