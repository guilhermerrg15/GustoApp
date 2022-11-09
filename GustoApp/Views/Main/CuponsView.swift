//
//  CuponsView.swift
//  GustoApp
//
//  Created by Guilherme Gomes on 26/10/22.
//

import SwiftUI

struct CuponsView: View {
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    @State var geraCupom: [Int] = []
    
    //    @State private var showingAlert = false
    var body: some View {
        
        ZStack{
            Color.corDeFundo
                .ignoresSafeArea()
            VStack(spacing: 25){
                ZStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6.5 )
                    HStack{
                        Image("coin")
                            .resizable()
                            .frame(width: 120, height: 120)
                        VStack{
                            Text("Troque suas moedas")
                                .foregroundColor(Color.corRosa)
                                .font(.custom("SulSansTest-Bold", size: 22, relativeTo: .title))
                                .padding(5)
                            Text("1 receita: 5 moedas")
                                .foregroundColor(.gray)
                            Text("10 moedas: 5 reais")
                                .foregroundColor(.gray)
                            Text("20 moedas: 12 reais")
                                .foregroundColor(.gray)
                        }
                    } .padding(.trailing)
                }
                ForEach(Cupom.allCupons) { cupom in
                    let _ = print(cupom.texto, cupom.valor)
                    CupomPreviewView(geraCupom: $geraCupom, cupom: cupom)
                }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height / 7.5 )
                            .overlay(alignment: .bottomTrailing){
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(Color.corTextoPasso)
                                    .font(.system(size: 30))
                                    .padding(.bottom,40)
                                    .padding(.trailing, 10)
                            }
                        HStack{
                            Image("coin")
                                .resizable()
                                .frame(width: 80, height: 80)
                            Group{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color.corRosa)
                                        .frame(width: UIScreen.main.bounds.width/1.9, height: UIScreen.main.bounds.height / 11 )
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color.corRosaClara)
                                            .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height / 12 )
                                        VStack{
                                            NavigationLink(destination: MyCuponsView(geraCupom: $geraCupom), label: {
                                                Text("Meus cupons")
                                                    .foregroundColor(Color.corRosa)
                                                    .font(.custom("SulSansTest-Bold", size: 28, relativeTo: .title))
                                            }).buttonStyle(.plain)
                                        }
                                    }
                                }
                            }
                        } .padding(.trailing, 30)
                    }
                    
                    Spacer()
                } .padding(.top, 20)
                
                
                    .safeAreaInset(edge: .top) {
                        ZStack {
                            Color.corRosa
                                .ignoresSafeArea(edges: .top)
                                .padding(.bottom)
                            Text("Cupons")
                                .font(.custom("SulSansTest-Bold", size: 35, relativeTo: .title))
                                .foregroundColor(Color.corAmarela)
                                .padding(20)
                        }.frame(height: 35)
                    }
            }
            .navigationBarBackButtonHidden(true)
            .overlay(alignment: .topTrailing){
                HStack {
                    Button {
                        dismiss()
                        shouldShowOnboarding = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.corRosa, Color.corDeFundo)
                        
                            .padding(.leading, 20)
                            .padding(.top, 10)
                        Spacer()
                    }
                    .buttonStyle(.plain)
                }
            }
            
        }
    
}

struct CuponsView_Previews: PreviewProvider {
    static var previews: some View {
        CuponsView()
    }
}
