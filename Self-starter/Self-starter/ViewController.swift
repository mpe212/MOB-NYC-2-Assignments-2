//
//  ViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 4/25/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var exercises = ["Lunges", "Squats", "Sit-Ups", "Push-Ups", "Stretches", "Jumping Jacks", "Bicep Curls"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel!.text = exercises[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController is DetailViewController {
            var DetailVC = segue.destinationViewController as! DetailViewController
        }
    }
    
}


