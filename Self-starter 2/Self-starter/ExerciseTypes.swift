//
//  ExerciseTypes.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 5/9/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class ExerciseTypes: NSObject {

    var sections: [String] = []
    var items: [[String]] = []
    
    func addSection(section: String, item:[String]) {
        sections = sections + [section]
        items = items + [item]
    }

}
