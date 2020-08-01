//
//  CommonModule.swift
//  Geulbie
//
//  Created by Shin on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct CommonModule: View {
    var contents: PieceModuleContents
    
    var body: some View {
        contents
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 1)
        )
    }
}

struct CommonModule_Previews: PreviewProvider {
    static var previews: some View {
        CommonModule(contents: PieceModuleContents())
    }
}
