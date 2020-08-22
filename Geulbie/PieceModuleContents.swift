//
//  PieceModuleContents.swift
//  Geulbie
//
//  Created by Shin on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct PieceModuleContents: View {
    var writing: Bool = false
    var price: Int = -1
    var rate: Int = -1
    var pieceTitle: String = "Title of piece"
    var writer: String = "Writer"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Spacer()
                if(!writing && (price > 0)) {
                    Text("🍒 \(price)")
                }
                else {
                    Text("\(rate)%")
                }
            }
            .font(.caption)
            
            VStack(alignment: .leading) {
                Text(pieceTitle)
                    .font(.largeTitle)
                Text(writer)
                    .font(.subheadline)
            }
        }
        .frame(minWidth: 0, idealWidth: .greatestFiniteMagnitude, maxWidth: .greatestFiniteMagnitude, minHeight: 0, idealHeight: 77, maxHeight: 77, alignment: Alignment.leading)
    }
}

struct PieceModuleContents_Previews: PreviewProvider {
    static var previews: some View {
        PieceModuleContents()
    }
}
