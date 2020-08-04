//
//  UserText.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class UserText {
    static let KEY: String = "userText"
    static let USER_INDEX_KEY: String = "userKey"
    static let CATEGORY_INDEX_KEY: String = "categoryKey"
    static let CONTENT_KEY: String = "userTextContent"
    static let SAMPLE_KEY: String = "userTextSample"
    static let TITLE_KEY: String = "userTextTitle"
    static let WRITER_KEY: String = "userTextWriter"
    
    var DBIndex: Int = -1
    var categoryIndex: Int = 0
    var title: String = "제목"
    var writer: String? = nil
    var sample: String? = nil
    var content: String = "내용"
    
    init(DBIndex: Int,
         categoryIndex: Int,
         title: String,
         writer: String?,
         sample: String?,
         content: String) {
        self.DBIndex = DBIndex
        self.categoryIndex = categoryIndex
        self.title = title
        self.writer = writer
        self.sample = sample
        self.content = content
    }
}
