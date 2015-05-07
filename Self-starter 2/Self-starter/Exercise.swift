//
//  Exercise.swift
//  Self-starter
//
//  Created by trvslhlt on 5/5/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class Exercise: NSObject {
   
    let title: String
    let image: UIImage
    let textDescription: String
    
    init(title: String, image: UIImage, textDescription: String) {
        self.title = title
        self.image = image
        self.textDescription = textDescription
        super.init()
    }
    
}
