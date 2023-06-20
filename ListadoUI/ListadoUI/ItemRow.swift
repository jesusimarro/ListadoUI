//
//  ItemRow.swift
//  ListadoUI
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct ItemRow: View {
    let item: ProductoItem
    
    var body: some View {
        HStack {
            AsyncImage (
                url: URL(string: item.image),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.black, lineWidth: 1))
                },
                placeholder: {
                    ProgressView()
                }
            )
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                HStack {
                    Text(item.category)
                        .font(.caption)
                    Spacer()
                    Text("\(item.price, specifier: "%.2f") €")
                }
            }
        }
        .padding(10)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: ProductoItem.example)
    }
}
