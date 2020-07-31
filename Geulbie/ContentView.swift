//
//  ContentView.swift
//  Geulbie
//
//  Created by 이재은 on 2020/07/19.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @ObservedObject var text = Text(of: 4)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            HStack(alignment: .bottom) {
                SwiftUI.Text(text.title)
                    .font(.largeTitle)
                Spacer()
                SwiftUI.Text("\(text.price)열매")
                    .font(.subheadline)
            }
            SwiftUI.Text(text.sample)
                .font(.headline)
            Divider()
            SwiftUI.Text(text.content)
                .font(.body)
        }
        .padding()
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude, alignment: Alignment.topLeading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
