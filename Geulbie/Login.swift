//
//  Login.swift
//  Geulbie
//
//  Created by Amy on 2020/08/22.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI
import KakaoSDKAuth
import KakaoSDKUser

struct Login: View {
    var body: some View {
         Text("hello")
/*
        Button(action: {
            if (AuthApi.isKakaoTalkLoginAvailable()) {
                AuthApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoTalk() success.")

                        //do something
                        _ = oauthToken
                    }
                }
            }
            
        }) {
            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
        }
 */
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
