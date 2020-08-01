//
//  SeriesModuleContents.swift
//  
//
//  Created by Shin on 2020/08/01.
//

import SwiftUI

struct SeriesModuleContents: View {
    var seriesTitle: String = "Series title"
    var writer: String = "Writer"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(seriesTitle)
                .font(.largeTitle)
            Text(writer)
                .font(.subheadline)
        }
        .frame(minWidth: 0, idealWidth: .greatestFiniteMagnitude, maxWidth: .greatestFiniteMagnitude, minHeight: 0, idealHeight: 55, maxHeight: 60, alignment: Alignment.leading)
    }
}

struct SeriesModuleContents_Previews: PreviewProvider {
    static var previews: some View {
        SeriesModuleContents()
    }
}
