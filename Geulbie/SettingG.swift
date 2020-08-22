//
//  SettingG.swift
//  Geulbie
//
//  Created by Amy on 2020/08/16.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct SettingG: View {
    var body: some View {
        NavigationView {
            VStack {
                Form{
                    Section(header: Text("나의 설정")){
                        Text("글꼴");
                        Text("음악");
                    }
                    
                    Section(header: Text("지원")){
                        Text("문의하기");
                        Text("광고 제거");
                        Text("앱정보");
                        Text("서비스 약관");
                    }
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
                //탈퇴하기
    }
}

struct SettingG_Previews: PreviewProvider {
    static var previews: some View {
        SettingG()
    }
}
