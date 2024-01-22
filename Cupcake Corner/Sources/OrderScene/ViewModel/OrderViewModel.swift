//
//  OrderViewModel.swift
//  Cupcake Corner
//
//  Created by Павел Кунгурцев on 22.01.2024.
//

import Foundation
import SwiftUI

class OrderViewModel: ObservableObject {
    
    @Published var order: Orderable = Order()
    
    
    var cost: Double {
        // $2 per cake
        var cost = Double(order.quantity) * 2

        // complicated cakes cost more
        cost += (Double(order.type) / 2)

        // $1/cake for extra frosting
        if order.extraFrosting {
            cost += Double(order.quantity)
        }

        // $0.50/cake for sprinkles
        if order.addSprinkles {
            cost += Double(order.quantity) / 2
        }

        return cost
    }
    
    var hasValidAddress: Bool {
        if order.name.isEmpty || order.streetAddress.isEmpty || order.city.isEmpty || order.zip.isEmpty {
            return false
        }

        return true
    }

}
