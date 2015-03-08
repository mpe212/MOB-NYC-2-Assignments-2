//
//  AnimalSubclass.swift
//  Lesson03
//
//  Created by Marcia Elyseu on 3/8/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class SmallAnimals : Animal {
    
 //   let name: String
    let color : String
    let type : String
    
    init(name: String, color: String, type: String) {
        self.color = color
        self.type = type
        
        super.init(name: name)
    }
    
    override func prettyAnimalName() -> String {
        return "Animal2 name: " + self.name + "\n Animal Type:" + self.type + "\n Animal Color:" + self.color
    }
}
