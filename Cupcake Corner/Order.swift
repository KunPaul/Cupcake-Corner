//
//  Order.swift
//  Cupcake Corner
//
//  Created by Павел Кунгурцев on 18.01.2024.
//

import SwiftUI

class Order: ObservableObject, Codable {
    
    static let types = ["Vanilla", "Strawberry", "Chocolate","Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
}
