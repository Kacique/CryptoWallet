//
//  Color.swift
//  CryptoWallet
//
//  Created by William on 6/6/23.
//

import Foundation
import SwiftUI

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondayText = Color("SecondaryTextColor")
}

extension Color{
    static let theme = ColorTheme()
}
