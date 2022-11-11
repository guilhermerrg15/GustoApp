//
//  SopaView.swift
//  Gustô
//
//  Created by Isabella Gomes  on 10/11/22.
//

import Foundation
import SwiftUI

struct SopaView: View {
    @State var shouldShowOnboarding: Bool = false
    @Environment(\.dismiss) private var dismiss
    @State private var selectedCells: Set<Dados> = []
    var todos = MockData.dadosList()
    
    var body: some View {
        ZStack{
            Color.corDeFundo
            ScrollView {
                ForEach (todos) {
                    dados in
                    ContentCell(dados: dados, isExpanded: self.selectedCells.contains (dados))
                        .modifier (ScrollCell ())
                        .onTapGesture {
                            if self.selectedCells.contains(dados) {
                                self.selectedCells.remove (dados)
                            } else {
                                self.selectedCells.insert (dados)
                            }
                        }
                        .animation(.easeInOut(duration: 0.2))
                        .padding(.vertical,2)
                }.background(.white)
            }
            .frame(maxWidth: .infinity)
            .padding(.top,10)
            .safeAreaInset(edge: .top) {
                ZStack {
                    Color.corRosa
                        .ignoresSafeArea(edges: .top)
                        .padding(.bottom)
                    Text("Sopa de Letrinhas")
                        .font(.custom("SulSansTest-Bold", size: 25, relativeTo:.largeTitle))
                        .foregroundColor(Color.corAmarela)
                        .padding(20)
                }.frame(height: 65)
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
                        .padding(.top, 15)
                    Spacer()
                }
                .buttonStyle(.plain)
            }
        }
    }
}
            
            
      
  

struct ContentCell: View {
    let dados: Dados
    let isExpanded: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Text (dados.titulo)
                        .font(.custom("SulSansTest-Bold", size: 20, relativeTo: .title))
                        .foregroundColor(Color.corTextoPasso)
                        .padding (.leading, 16)
                    Spacer()
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(Color.corTextoPasso)
                        .font(.system(size: 22, weight: .regular))
                        .padding(.trailing, 16)
                }
                if isExpanded {
                    VStack(alignment: .leading){
                        Text (dados.descricao)
                            .font(.custom("SulSansTest-Regular", size: 16, relativeTo: .title))
                            .foregroundColor(Color.corRosa)
                            .multilineTextAlignment (.leading)
                            .lineLimit(nil)
                            .padding(. top, 16)
                            .padding (.horizontal, 16)
                    }
                }
                Spacer()
            }.contentShape(Rectangle())
            
        }
    }
}



struct ScrollCell: ViewModifier{
    func body(content: Content) -> some View {
        Group{
            content
            Divider()
        }
    }
}

struct Dados: Identifiable, Hashable{
    let id = UUID()
    let titulo: String
    let descricao: String
}

struct MockData{
    static func dadosList() -> [Dados] {
        return[
            Dados(titulo: "À milanesa", descricao: "Alimento passado no ovo e em farinha de rosca e frito em gordura quente."),
            Dados(titulo: "Ao ponto", descricao: "lalalalallal"),
            Dados(titulo: "Banho-maria", descricao: "lalalalallal"),
            Dados(titulo: "Canapé", descricao: "lalalalallal"),
            Dados(titulo: "Corar", descricao: "lalalalallal"),
            Dados(titulo: "Defumar", descricao: "lalalalallal"),
            Dados(titulo: "Refogar", descricao: "lalalalallal")
        ]
    }
    
}
