//
//  Exercise.swift
//  Self-starter
//
//  Created by trvslhlt on 5/5/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

//class Exercise: NSObject {

class ExerciseItems: ExerciseType {
//    
//    let title: String
//    let image: UIImage
//    let textDescription: String
//    let level: Int

    override init() {
        
//        let title: String
//        let image: UIImage
//        let textDescription: String
//        let level: Int

        super.init()
        
       // addSection("Upper", item: [[Bent-Over-Row], [Bicep-curls], [Chair-Dips], [Shoulder-Raise], [Lateral-Raise], [Tricep-curl"])
        addSection("Lower", item: ["Lunges", "Jog or Run", "Simple Squat", "Calve Raises"])
        
       // addSection("Core", item: ["Lunges", "Running", "Squat", "Calve-Raise", "Step-Ups"])
//
//        init(title: String, image: UIImage, level: Int, textDescription: String) {
//        self.title = title
//        self.image = image
//        self.textDescription = textDescription
//        self.level = level
//
        
        }
    }
