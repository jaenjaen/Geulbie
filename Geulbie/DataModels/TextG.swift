//
//  TextG.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class TextG {
    static let KEY: String = "text"
    static let CATEGORY_INDEX_KEY = "categoryKey"
    static let SERIES_INDEX_KEY = "seriesKey"
    static let WRITER_INDEX_KEY = "writerKey"
    static let TITLE_KEY = "textTitle"
    static let SAMPLE_KEY = "sampleText"
    static let CONTENT_KEY = "textContent"
    static let PRICE_KEY = "textPrice"
    
    var categoryIndex: Int = 0
    var seriesIndex: Int? = nil
    var writerIndex: Int = -1
    var title: String = "글 제목"
    var sample: String? = nil
    var content: String = "내용"
    var price: Int = 0
    
    init(categoryIndex: Int,
         seriesIndex: Int?,
         writerIndex: Int,
         title: String,
         sample: String?,
         content: String,
         price: Int) {
        self.categoryIndex = categoryIndex
        self.seriesIndex = seriesIndex
        self.writerIndex = writerIndex
        self.title = title
        self.sample = sample
        self.content = content
        self.price = price
    }
}
