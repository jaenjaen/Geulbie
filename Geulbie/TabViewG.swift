//
//  TabViewG.swift
//  Geulbie
//
//  Created by Amy on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct TabViewG: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
                
                MainG()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("모두보기") //MAING
                    }
                }
                .tag(0)
                
                WritingNoteG()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("필사공책") //WRITINGNOTEG
                    }
                }
                .tag(1)
                
                BookmarkTmp()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("책갈피") //BOOKMARKG
                    }
                }
                .tag(2)
                
                MypageG()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("나의정보") //MYPAGEG
                    }
                }
                .tag(3)
                
            }
        }
}



struct TabViewG_Previews: PreviewProvider {
    static var previews: some View {
        TabViewG()
    }
}
