//
//  TextModuleContents.swift
//  Geulbie
//
//  Created by Shin on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct TextModuleContents: View {
    var price: Int = -1
    var rate: Int = -1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Spacer()
                if(price > 0) {
                    Text("🍒 \(price)")
                } else {
                    Text("\(rate)%")
                }
            }
            .font(.caption)
            
            Text("Sample")
                .font(.subheadline)
        }
        .frame(minWidth: 0, idealWidth: .greatestFiniteMagnitude, maxWidth: .greatestFiniteMagnitude, minHeight: 0, idealHeight: 60, maxHeight: 60, alignment: Alignment.topLeading)
    }
}

struct TextModuleContents_Previews: PreviewProvider {
    static var previews: some View {
        TextModuleContents()
    }
}
