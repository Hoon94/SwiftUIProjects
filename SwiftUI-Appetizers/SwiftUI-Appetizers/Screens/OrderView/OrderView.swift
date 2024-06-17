//
//  OrderView.swift
//  SwiftUI-Appetizers
//
//  Created by Daehoon Lee on 4/15/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
//                    List(orderItems) { appetizer in
//                        AppetizerListCell(appetizer: appetizer)
//                            .swipeActions {
//                                Button(role: .destructive) {
//                                    orderItems.removeAll { $0.id == appetizer.id }
//                                } label: {
//                                    Label("Remove", systemImage: "trash")
//                                }
//    
//                            }
//                    }
//                    .listStyle(.plain)
                    
                    Button {
                        print("order placed")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizers!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
