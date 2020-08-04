//
//  Writer.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class Writer {
    static let KEY: String = "writer"
    static let PEN_NAME_KEY: String = "penName"
    static let WRITER_IMG_KEY: String = "writerImg"
    
    var penName: String = "필명"
    var writerImg: String? = nil
    
    init(penName: String, writerImg: String?) {
        self.penName = penName
        self.writerImg = writerImg
    }
}
