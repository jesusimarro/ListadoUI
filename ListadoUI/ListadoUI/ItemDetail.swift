//
//  ItemDetail.swift
//  ListadoUI
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct ItemDetail: View {
    let item: ProductoItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                AsyncImage (
                    url: URL(string: item.image),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 300, maxHeight: 400)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
            }
            Text(item.title)
                .font(.title)
                .fontWeight(.semibold)
            HStack {
                Text(item.category)
                    .font(.subheadline)
                Spacer()
                Text("\(item.price, specifier: "%.2f") €")
            }
            .padding(5)
            Text(item.description)
                .padding()
                .font(.title3)
            Button {
                
            } label: {
                Label("Comprar", systemImage: "cart")
            }
            .buttonStyle(.borderedProminent)
            .tint(.cyan)
            Spacer()
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: ProductoItem.example)
    }
}
