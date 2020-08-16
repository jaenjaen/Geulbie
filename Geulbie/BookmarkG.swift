//
//  BookmarkG.swift
//  Geulbie
//
//  Created by Amy on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct BookmarkG: View {
    var body: some View {
        Home()
    }
}

struct BookmarkG_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkG()
    }
}

struct AppBar : View {
    
    @Binding var index : Int
    @Binding var offset : CGFloat
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        
        VStack(alignment: .leading, content: {
            
            HStack{
                
                Button(action: {
                    
                    self.index = 1
                    self.offset = self.width
                }) {
                    
                    VStack(spacing: 8){
                        
                        HStack(spacing: 12){

                            
                            Text("글")
                                .foregroundColor(self.index == 1 ? .black : Color.black.opacity(0.7))
                        }
                        
                        Capsule()
                            .fill(self.index == 1 ? Color.black : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                Button(action: {
                    
                    self.index = 2
                    self.offset = 0
                    
                }) {
                    
                    VStack(spacing: 8){
                        
                        HStack(spacing: 12){
                            
                            Text("이음글")
                                .foregroundColor(self.index == 2 ? .black : Color.black.opacity(0.7))
                        }
                        
                        Capsule()
                            .fill(self.index == 2 ? Color.black : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                Button(action: {
                    
                    self.index = 3
                    self.offset = -self.width
                    
                }) {
                    
                    VStack(spacing: 8){
                        
                        HStack(spacing: 12){
                            
                            Text("글쓴이")
                                .foregroundColor(self.index == 3 ? .black : Color.black.opacity(0.7))
                        }
                        
                        Capsule()
                            .fill(self.index == 3 ? Color.black : Color.clear)
                            .frame(height: 4)
                    }
                }

            }
        })
        .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
        .padding(.horizontal)
    }
}

struct Home : View {
    @State var index = 1
    @State var offset : CGFloat = UIScreen.main.bounds.width
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        VStack(spacing: 0){
            AppBar(index: self.$index, offset: self.$offset)
            
            GeometryReader{g in
                HStack(spacing:0){
                    
                    First()
                        .frame(width: g.frame(in : .global).width)
                    
                    Scnd()
                        .frame(width: g.frame(in : .global).width)
                    
                    Third()
                        .frame(width: g.frame(in : .global).width)
                }//~Hstack
                .offset(x: self.offset)
                .highPriorityGesture(DragGesture()
                
                .onEnded({ (value) in
                    
                    if value.translation.width > 50{// minimum drag...
                    
                        print("right")
                        self.changeView(left: false)
                        
                    }
                    if -value.translation.width > 50{
                        print("left")
                        self.changeView(left: true)
                    }}))//~hightPriorityGesture
          }//~geometryReader
        }.animation(.default)
        .edgesIgnoringSafeArea(.all)//~Vstack
    }//~view
    
    func changeView(left: Bool){
         
        if left{
            if self.index != 3{
                self.index += 1
            }
        }
        else{
            
            if self.index != 0{
                self.index -= 1
            }
        }
        
        if self.index == 1{
            self.offset = self.width
        }
        else if self.index == 2{
            self.offset = 0
        }
        else{
            self.offset = -self.width
        }
    }
}

//글
struct First : View{
    var body: some View{
        NavigationView{
            List{
                NavigationLink(destination: ContentView()
                ){
                    TextModuleContents(price:10,rate:0,sample:"그들은 전인 몸이 청춘 피다. 방황하여도, 웅대한 우리 청춘을 것이다. 풀밭에 그들은 예가 새가 가슴에 쓸쓸하랴? 두기 보내는 피가 되려니와, 스며들어 길지 위하여서. 살았으며, 우리 우리의 우리 철환하였는가? 위하여, 가치를 속에 뼈 크고 밥을 힘있다.")
                }
                NavigationLink(destination: ContentView()){
                    TextModuleContents(price:0,rate:40,sample:"이성은 듣기만 크고 너의 발휘하기 앞이 보라. 눈이 가진 맺어, 피가 보배를 인생을 철환하였는가? 천지는 피가 위하여서 힘있다. 하는 길지 뜨거운지라, 작고 옷을 위하여 때문이다. 영락과 스며들어 사라지지 보내는 가치를 바이며, 갑 그와 봄바람이다. 그들의 광야에서 이는 수 그림자는 오아이스도 놀이 철환하였는가?")
                    }
                }.navigationBarTitle("책갈피")
                .navigationBarHidden(true)
        }
    }
}
//이음글
struct Scnd : View{
    @State var showingDetail = false
    var body: some View{
        
        GeometryReader{_ in
             List{
                Button(action: {
                    self.showingDetail.toggle()
                }) {
                    PieceModuleContents(textTitle: "어린왕자", writer: "생택쥐페리", price: 0, rate: 30)
                }.sheet(isPresented: self.$showingDetail) {
                    SeriesView()
                }
                Button(action: {
                    self.showingDetail.toggle()
                }) {
                    PieceModuleContents(textTitle: "재혼황후", writer: "알파타르트", price: 10, rate: 30)
                }.sheet(isPresented: self.$showingDetail) {
                    SeriesView()
                }
            }
        }
    }
}

//시리즈
struct Third : View{
    var body: some View{
        
        GeometryReader{_ in
            VStack{
                Text("third")
            }
        }
    }
}
