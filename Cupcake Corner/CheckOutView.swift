//
//  CheckOutView.swift
//  Cupcake Corner
//
//  Created by Павел Кунгурцев on 18.01.2024.
//

import SwiftUI

struct CheckOutView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CheckOutView(order: Order())
}
