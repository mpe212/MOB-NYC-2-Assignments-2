//
//  EntryViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 5/7/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var passedInName = "Unknown"
    override func viewDidLoad() {
        messageLabel.text = "hello \(passedInName)!"
    }
}
