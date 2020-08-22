//
//  TextModuleContents.swift
//  Geulbie
//
//  Created by Shin on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct TextModuleContents: View {
    var writing: Bool
    var price: Int
    var rate: Int
    var sample: String
    
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
            
            Text(sample)
                .font(.subheadline)
        }
        .frame(minWidth: 0, idealWidth: .greatestFiniteMagnitude, maxWidth: .greatestFiniteMagnitude, minHeight: 0, idealHeight: 60, maxHeight: 60, alignment: Alignment.topLeading)
    }
}

struct TextModuleContents_Previews: PreviewProvider {
    static var previews: some View {
        TextModuleContents(writing: false, price: -1, rate: -1, sample: "Sample")
    }
}
