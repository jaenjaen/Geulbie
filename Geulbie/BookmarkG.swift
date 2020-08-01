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

struct First : View{
    var body: some View{
        ScrollView(.vertical,showsIndicators: false){
            Text("fist View")
        }
    }
}

struct Scnd : View{
    var body: some View{
        
        GeometryReader{_ in
            VStack{
                Text("scnd")
            }
        }
    }
}

struct Third : View{
    var body: some View{
        
        GeometryReader{_ in
            VStack{
                Text("third")
            }
        }
    }
}
