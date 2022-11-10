//
//  CupomPreviewView.swift
//  Gustô
//
//  Created by Guilherme Gomes on 07/11/22.
//

import SwiftUI

struct CupomPreviewView: View {
    @State var showingAlert: Bool = false
    @Binding var geraCupom: [Int]
    var cupom: Cupom
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 5)
                .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height / 5.5 )
                .overlay(alignment: .bottomLeading){
                    HStack{
                        Text(cupom.name)
                            .font(.custom("SulSansTest-Bold", size: 14, relativeTo: .title))
                            .foregroundColor(.gray)
                    } .padding(.leading, 30)
                }
            Group{
                VStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.corAmarela)
                        .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height / 8 )
                }
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.corAmarelaClara)
                            .frame(width: UIScreen.main.bounds.width/1.55, height: UIScreen.main.bounds.height / 8.5 )
                        Button(cupom.texto) {
                            if (cupom.valor == 12) {
                                geraCupom.append(0)
                            } else {
                                geraCupom.append(1)
                            }
                            showingAlert = true
                            
                        } .alert("Confirmação", isPresented: $showingAlert){
                            Button("Trocar \(cupom.custo)"){
                                let _ = Wallet.instance.buy(cupom: cupom)
                                
                            }
                            Button("Cancel", role: .cancel){
                                
                            }
                        }
                            .foregroundColor(Color.corAmarela)
                            .font(.custom("SulSansTest-Bold", size: 35, relativeTo: .title))
                            .padding()
                            .buttonStyle(.plain)
                            .disabled(!Wallet.instance.hasMoney(for: cupom))
                    }
                }
                
            } .padding(.bottom, 30)
        }
    }
}
