//
//  EditProfileView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct EditProfileView: View {
    @State var changeProfileImage = false
    @State var openCamera = false
    @Binding var username: String
    @Binding var imageSelect: UIImage
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 1, green: 247/255,blue: 238/255)
                    .ignoresSafeArea()
                VStack{
                    
                    ZStack(alignment: .bottomLeading){
                        Button(action: {
                            changeProfileImage = true
                            openCamera = true
                            
                        }, label: {
                            if changeProfileImage {
                                Image(uiImage: imageSelect)
                                    .resizable()
                                    .frame(width: 140, height: 140)
                                    .clipShape(Circle())
                            } else {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 160, height: 160)
                                    .clipShape(Circle())
                            }
                        })
                        Image(systemName: "pencil")
                            .frame(width: 60, height: 30)
                            .foregroundColor(.white)
                            .background(.black)
                            .clipShape(Circle())
                    } .padding(.top)
                    
                    .sheet(isPresented: $openCamera) {
                        ProfileImagePicker(selectedImage: $imageSelect, sourceType: .photoLibrary)
                            .padding(.top, 80)
                    }
                    
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
                
            }.safeAreaInset(edge: .top){
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
    }}

struct DummyView: View {
    
    @State var username: String = "ABC"
    @State var foto: UIImage = UIImage()
    var body: some View {
        EditProfileView(username: $username, imageSelect: $foto)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        DummyView()
    }
}
