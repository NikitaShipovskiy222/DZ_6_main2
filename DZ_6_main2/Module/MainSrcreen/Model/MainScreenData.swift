//
//  File.swift
//  DZ_6_main
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import Foundation


struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var description: String
    var mainImage: String
    var secondImage: String
    var thirdImage: String
    var fourthImage: String
    
    
    static func mockData() -> [Item] {
        
        [
            Item(name: "Паша Техник", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt", mainImage: "img0", secondImage: "img1", thirdImage: "img2", fourthImage: "img3"),
            Item(name: "Иван Лунев", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt" ,mainImage: "img1.0", secondImage: "img1.1", thirdImage: "img1.2", fourthImage: "img1.3"),
            Item(name: "Игнат Ринов", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt", mainImage: "img2.0", secondImage: "img2.1", thirdImage: "img2.2", fourthImage: "img2.3")
        ]
        
    }
    
}


