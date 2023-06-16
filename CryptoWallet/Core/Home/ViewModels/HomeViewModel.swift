//
//  HomeViewModel.swift
//  CryptoWallet
//
//  Created by William on 6/15/23.
//

/**
 All the data used behind the scenes in HomeView is Managed here. HomeView manages the UI.
 */

import Foundation
import Combine

class HomeViewModel: ObservableObject{
    
    @Published var allCoins: [CoinModel] = []
    @Published var portFolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        // Simulates a fetch request
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portFolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
    
    func addSubscribers(){
        dataService.$allCoins
            .sink{ [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
