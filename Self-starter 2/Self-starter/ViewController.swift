//
//  ViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 4/25/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//


import UIKit

class ViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var exercises = [
        Exercise(title: "Lunges", image: UIImage(named: "sloth")!, textDescription: "this is how you do a lunge..."),
        Exercise(title: "Squats", image: UIImage(named: "sloth")!, textDescription: "vsdfvsdvsdfvsdfvsdfsdv sdfsd sdsdfsd vsdvdfvsdv ss"),
        Exercise(title: "Sit-Ups", image: UIImage(named: "sloth")!, textDescription: "vsdfvsdvsdfvsdfvsdfsdv sdfsd sdsdfsd vsdvdfvsdv ss")
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel!.text = exercises[indexPath.row].title
        
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController is DetailViewController {
            var detailVC = segue.destinationViewController as! DetailViewController
            if let selectedIndexPath = tableView.indexPathForSelectedRow() {
                let selectedExercise = exercises[selectedIndexPath.row]
               detailVC.exercise = selectedExercise
            }
        }
    }
    
}


