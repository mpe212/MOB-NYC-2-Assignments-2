//
//  DetailViewControllerTableViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 4/25/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var exerciseSelected: UILabel!
    //@IBOutlet weak var exerciseImage: UIImageView!
    
    var excerciseTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseSelected.text = self.excerciseTitle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 6
    }

}