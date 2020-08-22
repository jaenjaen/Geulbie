//
//  CommonModule.swift
//  Geulbie
//
//  Created by Shin on 2020/08/01.
//  Copyright © 2020 DINO. All rights reserved.
//

import SwiftUI

struct CommonModule: View {
    let moduleType: ModuleType
    var text: TextG?
    var series: Series?
    
    init(moduleType: ModuleType, text: TextG) {
        self.moduleType = moduleType
        self.text = text
        self.series = nil
    }
    
    init(moduleType: ModuleType, series: Series) {
        self.moduleType = moduleType
        self.text = nil
        self.series = series
    }
    
    var body: some View {
        Group {
            if(moduleType == .TextModule) {
                TextModuleContents(
                    writing: text!.writingIndex == nil ? false : true,
                    price: text!.price,
                    rate: text!.rate,
                    sample: text!.sample ?? ""
                )
            }
            else if(moduleType == .SeriesModule) {
                SeriesModuleContents(
                    seriesTitle: series!.seriesTitle,
                    writer: series!.writer.penName
                )
            }
            else if(moduleType == .PieceModule) {
                PieceModuleContents(
                    writing: text!.writingIndex == nil ? false : true,
                    price: text!.price,
                    rate: text!.rate,
                    pieceTitle: text!.title,
                    writer: text!.writer.penName
                )
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 1)
        )
    }
}

struct CommonModule_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                CommonModule(
                    moduleType: .TextModule,
                    text: TextG(category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                                series: nil,
                                writer: Writer(penName: "필명", writerImg: nil),
                                title: "글 제목",
                                sample: "미리보기",
                                content: "내용",
                                price: 2,
                                writingIndex: nil,
                                writingText: nil,
                                rate: 0)
                )
                CommonModule(
                    moduleType: .TextModule,
                    text: TextG(category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                                series: nil,
                                writer: Writer(penName: "필명", writerImg: nil),
                                title: "글 제목",
                                sample: "미리보기",
                                content: "내용",
                                price: 0,
                                writingIndex: nil,
                                writingText: nil,
                                rate: 0)
                )
                CommonModule(
                    moduleType: .TextModule,
                    text: TextG(category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                                series: nil,
                                writer: Writer(penName: "필명", writerImg: nil),
                                title: "글 제목",
                                sample: "미리보기",
                                content: "내용",
                                price: 1,
                                writingIndex: 1,
                                writingText: "hi",
                                rate: 2)
                )
                CommonModule(
                    moduleType: .SeriesModule,
                    series: Series(
                        category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                        writer: Writer(penName: "필명", writerImg: nil),
                        seriesTitle: "이음글 제목")
                )
                CommonModule(
                    moduleType: .PieceModule,
                    text: TextG(category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                                series: nil,
                                writer: Writer(penName: "필명", writerImg: nil),
                                title: "글 제목",
                                sample: "미리보기",
                                content: "내용",
                                price: 2,
                                writingIndex: nil,
                                writingText: nil,
                                rate: 0)
                )
                CommonModule(
                    moduleType: .PieceModule,
                    text: TextG(category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                                series: nil,
                                writer: Writer(penName: "필명", writerImg: nil),
                                title: "글 제목",
                                sample: "미리보기",
                                content: "내용",
                                price: 0,
                                writingIndex: nil,
                                writingText: nil,
                                rate: 0)
                )
                CommonModule(
                    moduleType: .PieceModule,
                    text: TextG(category: CategoryG(categoryIndex: 1, categoryName: "미분류"),
                                series: nil,
                                writer: Writer(penName: "필명", writerImg: nil),
                                title: "글 제목",
                                sample: "미리보기",
                                content: "내용",
                                price: 1,
                                writingIndex: 1,
                                writingText: "hi",
                                rate: 2)
                )
            }
            .padding()
            .navigationBarTitle("").navigationBarHidden(true)
        }
    }
}
