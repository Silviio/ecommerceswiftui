//
//  Constant.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 28/10/21.
//

import SwiftUI

// Data
let players: [PlayerModel] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")

// Color

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array (repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// API
// Image
// Font
// String
// Misc
