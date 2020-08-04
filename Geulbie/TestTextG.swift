//
//  Text.swift
//  Geulbie
//
//  Created by Shin on 2020/07/31.
//  Copyright © 2020 DINO. All rights reserved.
//

import Combine
import Firebase

class TestTextG: ObservableObject {
    @Published var title: String = "Title"
    @Published var sample: String = "Sample"
    @Published var content: String = "Content"
    @Published var price: Int = -1
    @Published var seriesIndex: String = "Series index"
    
    init(of index: Int) {
        getText(of: index)
    }
    
    func getText(of index: Int) {
        let ref = Database.database().reference()
        
        ref.child("text").child(String(index)).observeSingleEvent(of: .value, with: { snapshot in
            let value = snapshot.value as? NSDictionary
            self.title = value?["textTitle"] as? String ?? "No title"
            self.sample = value?["sampleText"] as? String ?? "No sample"
            self.content = value?["textContent"] as? String ?? "No content"
            self.price = Int(value?["textPrice"] as? String ?? "-2") ?? -3
            //print("title of snapshot: \(self.title)")
            print(value?["seriesKey"] as? String ?? "Z")
        })
        //print("title after reading func: \(title)")
    }
}
