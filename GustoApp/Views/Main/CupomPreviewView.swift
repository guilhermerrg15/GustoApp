//
//  CupomPreviewView.swift
//  Gustô
//
//  Created by Guilherme Gomes on 07/11/22.
//

import SwiftUI

struct CupomPreviewView: View {
    @Binding var showingAlert: Bool
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
                            .font(Font.custom("Futura",size: 14))
                            .foregroundColor(.gray)
                    } .padding(.leading, 30)
                }
            Group{
                VStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                        .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height / 8 )
                }
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 251/255, green: 216/255, blue: 141/255))
                            .frame(width: UIScreen.main.bounds.width/1.55, height: UIScreen.main.bounds.height / 8.5 )
                        Button(cupom.texto){
                            geraCupom.append(0)
                            showingAlert = true
                            
                        } .alert("Confirmação", isPresented: $showingAlert){
                            Button("Trocar \(cupom.custo)"){
                                let _ = Wallet.instance.buy(cupom: cupom)
                                
                            }
                            Button("Cancel", role: .cancel){
                                
                            }
                        }
                            .foregroundColor(Color(red: 247/255, green: 179/255, blue: 32/255))
                            .font(Font.custom("Futura",size: 35))
                            .padding()
                            .buttonStyle(.plain)
                            .disabled(!Wallet.instance.hasMoney(for: cupom))
                    }
                }
                
            } .padding(.bottom, 30)
        }
    }
}
//
//struct CupomPreviewView_Previews: PreviewProvider {
//    static var previews: some View {
//        CupomPreviewView()
//    }
//}
