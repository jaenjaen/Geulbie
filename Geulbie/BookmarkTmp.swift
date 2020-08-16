//
//  BookmarkTmp.swift
//  Geulbie
//
//  Created by 이재은 on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//


//북마크 체크
import SwiftUI

struct BookmarkTmp: View {
    @State var isclicked : Bool = false
    
    var body: some View {
        Button(action:{
            if self.isclicked == true{
                self.isclicked = false
            }else{
                self.isclicked = true
            }
            print(self.isclicked)
        }){
            Image("bookmark")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(self.isclicked ? .gray:.red)
        }
    }
}

struct BookmarkTmp_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkTmp()
    }
}
