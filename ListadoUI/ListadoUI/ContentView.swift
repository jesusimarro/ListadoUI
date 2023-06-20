//
//  ContentView.swift
//  ListadoUI
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct ContentView: View {
    let product = Bundle.main.decode([ProductoItem].self, from: "productos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(product) { item in
                    NavigationLink {
                        ItemDetail(item: item)
                    } label: {
                        ItemRow(item: item)
                    }
                }
            }
            .navigationTitle("Productos")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
