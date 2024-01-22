//
//  OrderViewModel.swift
//  Cupcake Corner
//
//  Created by Павел Кунгурцев on 22.01.2024.
//

import Foundation
import SwiftUI

class OrderViewModel: ObservableObject {
    
    @Published var order  = Order()
    
}
