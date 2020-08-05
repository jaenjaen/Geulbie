//
//  DataManager.swift
//  Geulbie
//
//  Created by Shin on 2020/08/03.
//  Copyright © 2020 DINO. All rights reserved.
//

import Combine
import Firebase

class DataManager: ObservableObject {
    private let ref: DatabaseReference! = Database.database().reference()
    
    @Published var APIArr: [API]
    @Published var categoryArr: [CategoryG]
    
    @Published var textArr: [TextG]
    @Published var seriesArr: [Series]
    @Published var writerArr: [Writer]
    
    @Published var user: User
    @Published var bookmarkArr: [Bookmark]
    @Published var userTextArr: [UserText]
    @Published var writingArr: [Writing]
    
    init(userIndex: Int) {
        APIArr = [API]()
        categoryArr = [CategoryG]()
        
        textArr = [TextG]()
        seriesArr = [Series]()
        writerArr = [Writer]()
        
        user = User()
        bookmarkArr = [Bookmark]()
        userTextArr = [UserText]()
        writingArr = [Writing]()
        
        self.getData(userIndex)
    }
    
    private func getData(_ userIndex: Int) {
        ref.queryOrderedByKey().observeSingleEvent(of: .value, with: { snapshot in
            var temp: DataSnapshot
            var item: NSDictionary
            
            // API 종류
            for child in snapshot.childSnapshot(forPath: API.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                self.APIArr.append(API(item[API.API_NAME_KEY] as! String))
            }
            // 분류
            for child in snapshot.childSnapshot(forPath: CategoryG.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                self.categoryArr.append(CategoryG(
                    item[CategoryG.CATEGORY_NAME_KEY] as! String
                ))
            }
            
            // 글
            for child in snapshot.childSnapshot(forPath: TextG.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                self.textArr.append(TextG(
                    categoryIndex: Int(item[TextG.CATEGORY_INDEX_KEY] as! String)!,
                    seriesIndex: self.opStrToOpInt(item[TextG.SERIES_INDEX_KEY] as? String),
                    writerIndex: Int(item[TextG.WRITER_INDEX_KEY] as! String)!,
                    title: item[TextG.TITLE_KEY] as! String,
                    sample: item[TextG.SAMPLE_KEY] as? String,
                    content: item[TextG.TITLE_KEY] as! String,
                    price: Int(item[TextG.PRICE_KEY] as! String)!
                ))
            }
            // 이음글
            for child in snapshot.childSnapshot(forPath: Series.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                self.seriesArr.append(Series(
                    categoryIndex: Int(item[Series.CATEGORY_INDEX_KEY] as! String)!,
                    seriesTitle: item[Series.SERIES_TITLE_KEY] as! String,
                    writerIndex: Int(item[Series.WRITER_INDEX_KEY] as! String)!
                ))
            }
            // 작가
            for child in snapshot.childSnapshot(forPath: Writer.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                self.writerArr.append(Writer(
                    penName: item[Writer.PEN_NAME_KEY] as! String,
                    writerImg: item[Writer.WRITER_IMG_KEY] as? String
                ))
            }
            
            // 사용자
            temp = snapshot.childSnapshot(forPath: User.KEY).childSnapshot(forPath: String(userIndex))
            item = temp.value as! NSDictionary
            self.user.APIIndex = Int(item[User.API_INDEX_KEY] as! String)!
            self.user.APIKeyValue = item[User.API_KEY_VALUE_KEY] as! String
            self.user.account = item[User.ACCOUNT_KEY] as! String
            self.user.nickname = item[User.NICNAME_KEY] as! String
            self.user.userImg = item[User.USER_IMG_KEY] as? String
            self.user.removeAd = Bool(item[User.REMOVE_AD_KEY] as! String)!
            self.user.berries = Int(item[User.BERRIES_KEY] as! String)!
            // 책갈피
            for child in snapshot.childSnapshot(forPath: Bookmark.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                if(userIndex == Int(item[Bookmark.USER_INDEX_KEY] as! String)!) {
                    self.bookmarkArr.append(Bookmark(
                        DBIndex: Int(temp.key)!,
                        bookmarkType: BookmarkType(rawValue: Int(item[Bookmark.BOOKMARK_TYPE_KEY] as! String)!)!,
                        itemIndex: Int(item[Bookmark.ITEM_INDEX_KEY] as! String)!
                    ))
                }
            }
            // 사용자 추가 글
            for child in snapshot.childSnapshot(forPath: UserText.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                if(userIndex == Int(item[UserText.USER_INDEX_KEY] as! String)!) {
                    self.userTextArr.append(UserText(
                        DBIndex: Int(temp.key)!,
                        categoryIndex: Int(item[UserText.CATEGORY_INDEX_KEY] as! String)!,
                        title: item[UserText.TITLE_KEY] as! String,
                        writer: item[UserText.WRITER_KEY] as? String,
                        sample: item[UserText.SAMPLE_KEY] as? String,
                        content: item[UserText.CONTENT_KEY] as! String
                    ))
                }
            }
            // 필사
            for child in snapshot.childSnapshot(forPath: Writing.KEY).children {
                temp = child as! DataSnapshot
                item = temp.value as! NSDictionary
                if(userIndex == Int(item[Writing.USER_INDEX_KEY] as! String)!) {
                    self.writingArr.append(Writing(
                        DBIndex: Int(temp.key)!,
                        textIndex: self.opStrToOpInt(item[Writing.TEXT_INDEX_KEY] as? String),
                        userTextIndex: self.opStrToOpInt(item[Writing.USER_TEXT_INDEX_KEY] as? String),
                        text: item[Writing.TEXT_KEY]! as! String,
                        rate: Int(item[Writing.RATE_KEY] as! String)!
                    ))
                }
            }
        })
    }
    
    private func opStrToOpInt(_ string: String?) -> Int? {
        if string == nil {
            return nil
        } else {
            return Int(string!)
        }
    }
}
