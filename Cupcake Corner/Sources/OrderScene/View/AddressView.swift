//
//  AdressView.swift
//  Cupcake Corner
//
//  Created by Павел Кунгурцев on 18.01.2024.
//

import SwiftUI

struct AddressView: View {
    
   // @ObservedObject var order: Order
    @ObservedObject var orderViewModel: OrderViewModel
    
    var body: some View {
        
        Form {
            Section {
                TextField("Name", text: $orderViewModel.order.name)
                TextField("Street Address", text: $orderViewModel.order.streetAddress)
                TextField("City", text: $orderViewModel.order.city)
                TextField("Zip", text: $orderViewModel.order.zip)
            }

            Section {
                NavigationLink {
                    CheckOutView(orderViewModel: orderViewModel)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(orderViewModel.hasValidAddress == false)
            
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    AddressView(orderViewModel : OrderViewModel())
}
