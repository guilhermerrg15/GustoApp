//
//  ProfileView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 20/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var username: String =
        UserDefaults.standard.string(forKey: UserDefaultsKeys.username.rawValue) ?? "Nome"
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 247/255,blue: 238/255)
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6.5 )
                        HStack{
                            ZStack(alignment: .bottomLeading){
                                Image("profile")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .clipShape(Circle())
                            }
                            VStack{
                                Text(username)
                                    .foregroundColor(Color("ColorWine"))
                                    .font(Font.custom("Futura",size: 20))
                                Text("Nivel básico")
                                    .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                            }
                        }
                    }
                    VStack(spacing: -20){
                        VStack(spacing: 0){
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius: 20)
                                    .padding(.top,20)
                                    .foregroundColor(.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                                    .frame(width: UIScreen.main.bounds.width/1.05, height: UIScreen.main.bounds.height / 9 )
                                HStack{
                                    NavigationLink(destination: EditProfileView(username: $username), label: {
                                        Image(systemName: "person")
                                            .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                            .font(.system(size: 35))
                                        Text("Editar Perfil")
                                            .font(Font.custom("Futura",size: 27))
                                            .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                    })
                                }
                                .padding(.leading)
                                .padding(.top)
                            }
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius: 20)
                                    .padding(.top,20)
                                    .foregroundColor(.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                                    .frame(width: UIScreen.main.bounds.width/1.05, height: UIScreen.main.bounds.height / 9 )
                                HStack{
                                    NavigationLink(destination: CuponsView(), label: {
                                        Image(systemName: "ticket")
                                            .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                            .font(.system(size: 25))
                                        Text("Cupons")
                                            .font(Font.custom("Futura",size: 27))
                                            .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                    })
                                }
                                .padding(.leading)
                                .padding(.top)
                            }
                            ZStack(alignment: .leading){
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .padding(.top,20)
                                    .foregroundColor(.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                                    .frame(width: UIScreen.main.bounds.width/1.05, height: UIScreen.main.bounds.height / 9 )
                                HStack{
                                    NavigationLink(destination: FavoriteRecipes(), label: {
                                        Image(systemName: "fork.knife")
                                            .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                            .font(.system(size: 35))
                                        Text("Minhas Receitas")
                                            .font(Font.custom("Futura",size: 27))
                                            .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                    })
                                }
                                .padding(.leading)
                                .padding(.top)
                            }
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius: 20)
                                    .padding(.top,20)
                                    .foregroundColor(.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                                    .frame(width: UIScreen.main.bounds.width/1.05, height: UIScreen.main.bounds.height / 9 )
                                HStack{
                                    Image(systemName: "doc.text")
                                        .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                        .font(.system(size: 35))
                                    Text("Termos de uso")
                                        .font(Font.custom("Futura",size: 27))
                                        .foregroundColor(Color(red: 105/255, green: 34/255, blue: 98/255))
                                }
                                .padding(.leading)
                                .padding(.top)
                            }
                        }
                    }
                    Spacer()
                }
            }
            
            
            
            .safeAreaInset(edge: .top) {
                ZStack {
                    Color("ColorWine")
                        .ignoresSafeArea(edges: .top)
                        .padding(.bottom)
                    Text("Perfil")
                        .font(Font.custom("Futura",size: 35))
                        .foregroundColor(Color("ColorYellow"))
                        .padding(20)
                }.frame(height: 35)
            }
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
