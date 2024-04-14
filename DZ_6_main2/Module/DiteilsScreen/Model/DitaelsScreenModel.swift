//
//  DitaelsScreenModel.swift
//  DZ_6_main2
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import Foundation


struct Photos: Identifiable{
    var id = UUID().uuidString
    var images: [String]
 
    
    static func mockImage() -> [Photos]{
        
    [
        Photos(images: ["img1", "img2","img3"]),
        Photos(images: ["img1.1", "img1.2","img1.3"]),
        Photos(images: ["img2.1", "img2.2","img2.3"]),
    ]
    }
}
