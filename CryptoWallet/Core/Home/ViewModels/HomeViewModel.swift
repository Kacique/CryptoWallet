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

class HomeViewModel: ObservableObject{
    
    @Published var allCoins: [CoinModel] = []
    @Published var portFolioCoins: [CoinModel] = []
    
    init(){
        // Simulates a fetch request
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portFolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
}
