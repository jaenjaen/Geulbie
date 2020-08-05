//
//  Writing.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class Writing {
    static let KEY: String = "writing"
    static let USER_INDEX_KEY: String = "userKey"
    static let TEXT_INDEX_KEY: String = "textKey"
    static let USER_TEXT_INDEX_KEY: String = "userTextKey"
    static let TEXT_KEY: String = "writingText"
    static let RATE_KEY: String = "writingRate"
    
    var DBIndex: Int = -1
    var textIndex: Int? = nil
    var userTextIndex: Int? = nil
    var text: String = ""
    var rate: Int = 0
    
    init(DBIndex: Int,
         textIndex: Int?,
         userTextIndex: Int?,
         text: String,
         rate: Int) {
        self.DBIndex = DBIndex
        self.textIndex = textIndex
        self.userTextIndex = userTextIndex
        self.text = text
        self.rate = rate
    }
}
