//
//  CategoryModel.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 04/11/21.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
