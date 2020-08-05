//
//  Series.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class Series {
    static let KEY: String = "series"
    static let CATEGORY_INDEX_KEY = "categoryKey"
    static let SERIES_TITLE_KEY = "seriesTitle"
    static let WRITER_INDEX_KEY = "writerKey"
    
    var categoryIndex: Int = 0
    var seriesTitle: String = "이음글 제목"
    var writerIndex: Int = -1
    
    init(categoryIndex: Int, seriesTitle: String, writerIndex: Int) {
        self.categoryIndex = categoryIndex
        self.seriesTitle = seriesTitle
        self.writerIndex = writerIndex
    }
}
