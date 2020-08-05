//
//  Bookmark.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class Bookmark {
    static let KEY: String = "bookmark"
    static let USER_INDEX_KEY: String = "userKey"
    static let BOOKMARK_TYPE_KEY: String = "bookmarkTypeIndex"
    static let ITEM_INDEX_KEY: String = "itemIndex"
    
    var DBIndex: Int = -1
    var bookmarkType: BookmarkType = .text
    var itemIndex: Int = 0
    
    init(DBIndex: Int, bookmarkType: BookmarkType, itemIndex: Int) {
        self.DBIndex = DBIndex
        self.bookmarkType = bookmarkType
        self.itemIndex = itemIndex
    }
}
