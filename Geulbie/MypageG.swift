//
//  MypageG.swift
//  Geulbie
//
//  Created by Amy on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct MypageG: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("마이페이지 내용")
            }.navigationBarItems(trailing: NavigationLink(destination: SettingG(), label: {Text("설정")}))
        }
    }
}

struct MypageG_Previews: PreviewProvider {
    static var previews: some View {
        MypageG()
    }
}
