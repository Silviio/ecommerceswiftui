//
//  ProductModel.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 05/11/21.
//

import Foundation

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
