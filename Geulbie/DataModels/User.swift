//
//  User.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

class User {
    static let KEY: String = "user"
    static let API_INDEX_KEY = "userApiIndex"
    static let API_KEY_VALUE_KEY = "userApiKey"
    static let ACCOUNT_KEY = "userAccount"
    static let NICNAME_KEY = "userNickname"
    static let USER_IMG_KEY = "userImg"
    static let REMOVE_AD_KEY = "removeAd"
    static let BERRIES_KEY = "userBerry"
    
    var APIIndex: Int = 0
    var APIKeyValue: String = "API 키"
    var account: String = "dino@dinopia.com"
    var nickname: String = "별명"
    var userImg: String? = nil
    var removeAd: Bool = false
    var berries: Int = 0
}
