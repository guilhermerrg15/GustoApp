//
//  ProfileView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 20/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var imageSelect = UIImage()
    @State var username: String =
        UserDefaults.standard.string(forKey: UserDefaultsKeys.username.rawValue) ?? "Nome"
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.corDeFundo
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
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                Image(uiImage: imageSelect)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                
                            }
                            VStack{
                                Text(username)
                                    .foregroundColor(Color.corRosa)
                                    .font(.custom("SulSansTest-Medium", size: 20, relativeTo: .title))
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
                                    NavigationLink(destination: EditProfileView(username: $username, imageSelect: self.$imageSelect), label: {
                                        Image(systemName: "person")
                                            .foregroundColor(Color.corTextoPasso)
                                            .font(.custom("SulSansTest-Medium", size: 35, relativeTo: .title))
                                        Text("Editar Perfil")
                                            .font(.custom("SulSansTest-Medium", size: 27, relativeTo: .title))
                                            .foregroundColor(Color.corTextoPasso)
                                    }).buttonStyle(.plain)
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
                                            .foregroundColor(Color.corTextoPasso)
                                            .font(.system(size: 25))
                                        Text("Cupons")
                                            .font(.custom("SulSansTest-Medium", size: 27, relativeTo: .title))
                                            .foregroundColor(Color.corTextoPasso)
                                    }) .buttonStyle(.plain)
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
                                            .foregroundColor(Color.corTextoPasso)
                                            .font(.system(size: 35))
                                        Text("Minhas Receitas")
                                            .font(.custom("SulSansTest-Medium", size: 27, relativeTo: .title))
                                            .foregroundColor(Color.corTextoPasso)
                                    }) .buttonStyle(.plain)
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
                                        .foregroundColor(Color.corTextoPasso)
                                        .font(.custom("SulSansTest-Medium", size: 35, relativeTo: .title))
                                    Text("Termos de uso")
                                        .font(.custom("SulSansTest-Medium", size: 27, relativeTo: .title))
                                        .foregroundColor(Color.corTextoPasso)
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
                    Color.corRosa
                        .ignoresSafeArea(edges: .top)
                        .padding(.bottom)
                    Text("Perfil")
                        .font(.custom("SulSansTest-Medium", size: 35, relativeTo: .title))
                        .foregroundColor(Color.corAmarela)
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
