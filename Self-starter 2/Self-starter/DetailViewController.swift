//
//  DetailViewControllerTableViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 4/25/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var exercise: Exercise?
    @IBOutlet weak var exerciseDetail: UITextView!
    @IBOutlet weak var exerciseImage: UIImageView!
    
    var excerciseTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let exercise = self.exercise {
            self.title = exercise.title
            self.exerciseImage.image = exercise.image
            self.exerciseDetail.text = exercise.textDescription
        }
    }


}