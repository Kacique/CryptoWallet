//
//  CryptoWalletApp.swift
//  CryptoWallet
//
//  Created by William on 6/6/23.
//

import SwiftUI

@main
struct CryptoWalletApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
