//
//  WelcomeViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 5/8/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var initialImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introduceImage()
    }
    
    func introduceImage() {
        initialImage.alpha = 0
            
        initialImage.image = UIImage(named: "sunshine.jpg")
        UIView.animateWithDuration(3, animations: {
            self.initialImage.alpha = 1
            })
    }


}
