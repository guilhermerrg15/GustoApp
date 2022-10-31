//
//  FlowOrganizer.swift
//  Gustô
//
//  Created by Isabella Gomes  on 31/10/22.
//

import Foundation


class FlowOrganizer: ObservableObject {
    
    enum Screens {
        case recipe
        case instructions
        case parabens
        case home
    }
    
    private var currentScreen: Screens = .home
    
    @Published var shouldPresentParabens: Bool = false
    @Published var shouldPresentRecipe: Bool = false
    @Published var shouldPresentInstrucoes: Bool = false
    
    private func navigateAsync(screen: FlowOrganizer.Screens) {
        switch screen {
        case .recipe:
            shouldPresentRecipe = true
            shouldPresentInstrucoes = false
            shouldPresentParabens = false
            currentScreen = .recipe
        case .instructions:
            shouldPresentInstrucoes = true
            currentScreen = .instructions
        case .home:
            shouldPresentRecipe = false
            shouldPresentInstrucoes = false
            shouldPresentParabens = false
            currentScreen = .home
        case .parabens:
            shouldPresentParabens = true
            currentScreen = .parabens
        }
    }
    
    func navigateTo(_ screen: FlowOrganizer.Screens) {
        DispatchQueue.main.async {
            self.navigateAsync(screen: screen)
        }
    }
    
    private func dismissAsync() {
        switch self.currentScreen {
        case .home:
            break
        case .recipe:
            navigateTo(.home)
        case .instructions:
            navigateTo(.recipe)
        case .parabens:
            navigateTo(.home)
        }
    }
    
    func dismiss() {
        DispatchQueue.main.async {
            self.dismissAsync()
        }
    }
}
