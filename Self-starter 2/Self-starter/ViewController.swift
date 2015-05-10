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
    
    var passedInNewBmi = 0
    

    var exercises = ["Lower": [Exercise(title: "Lunges", image: UIImage(named: "2 lunges")!, level: 2, textDescription: "Stand with fit together and then step forward with the right foot, making sure your knee does not go past your toes. Complete 3 sets of 10 repetitions on each side."),
        Exercise(title: "Simple Squat", image: UIImage(named: "2 squat")!, level: 2, textDescription: "Stand straight with feet hip-width apart. Slowly lower body as if you are going to take a seat. Return to initial standing posiiton. Complete 3 sets of 15 repetitions"),
        Exercise(title: "Sit-Ups", image: UIImage(named: "3 sit-ups")!, level: 3, textDescription: "this is how you do a sit-up!")],
        
        "Upper": [Exercise(title: "Jog or Run", image: UIImage(named: "1 running")!, level: 1, textDescription: "Jog or run until slightly out of breath for 10-15 minutes."),
        Exercise(title: "Calve Raises", image: UIImage(named: "1 calve-raises")!, level: 1, textDescription: "Stand straight with feet together and slowly roll up onto the balls of your feet. Hold for 3 seconds and lower slowly. Complete 2 sets of 7 repetitions")],
        
        "Core": [Exercise(title: "Bent-Over-Row", image: UIImage(named: "1 Bent-Over-Row")!, level: 1, textDescription: "Lean forward at a 45 degree angle, keeping you back straigth. Using 3lbs - 5bls dumbells, slowly pull in forearms. Complete 2 sets of 10 repetitions"),
        Exercise(title: "Bicep-curls", image: UIImage(named: "1 bicep-curls")!, level: 1, textDescription: "Using 5lbs-8bls dumbells, stand with back straight and knees slighly bent. Keep feet hip-width apart and slowly raise forearms and then lower to initial position. Complete 3 sets of 10 repetitions")]]
    
    var sectionTitles = ["Lower", "Upper", "Core"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    var begginer = [Exercise]()
//    var intermediate = [Exercise]()
//    var advanced = [Exercise]()    var index = 0
//    
    
  //  for index in 0...6;++index {
//        if Exercise[index].level = 1 {
//        begginer.append(Exercise[index]
//    }   else if Exercise[index].level = 2 {
//        intermediate.append(Exercise[index])
//    }   else {
//        advanced.append(Exercise[index])
//    }


//        var selected = exercises.arc4_random()
    
  /*  switch bmi {
        case 18.5:
            for index = 0...3  {
                if exercises[index].level = 1
                beg.append(exercises[Index])
            }
    
        case 18.5...24.9:
            for index = 0...3  {
                if exercises[index].level = 1
                beg.append(exercises[Index])
            }
    
        case 24.9...29.9:
            for index = 0...3  {
                if exercises[index].level = 1
                beg.append(exercises[Index])
            }
    
        case 29.9...1000:
            for index = 0...3  {
            if exercises[index].level = 1
            beg.append(exercises[Index])
        }
    }*/
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionTitles.count
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //have section, use section to get dictionary key which is same as section title
        //use dictionary key to access value of key which is an array of Exercise objects
        // then count array objects (rows)
        
        let currentSection = sectionTitles[section]
        
        let arrayValue = exercises[currentSection]
        
        let numberOfRows = arrayValue?.count
        
        return numberOfRows!
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
        let currentSectionTitle = sectionTitles[indexPath.section]
        
        let currentArrayOfDictionary = exercises[currentSectionTitle]!
        
//        if let exerciseObject = currentArrayOfDictionary[indexPath.row] as Exercise {
//            
//        }
        
        let exerciseObject = currentArrayOfDictionary[indexPath.row] as Exercise
        
        cell.textLabel?.text = exerciseObject.title
        
     /*   if exercises[indexPath.row].level == 1 {
            cell.backgroundColor = UIColor.blueColor()
        } else if exercises[indexPath.row].level == 2 {
            cell.backgroundColor = UIColor.greenColor()
        } else {
            cell.backgroundColor = UIColor.redColor()
        }*/
        
        return cell
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController is DetailViewController {
            var detailVC = segue.destinationViewController as! DetailViewController
            
            if let indexPath = tableView.indexPathForSelectedRow() {
                
                let currentSectionTitle = sectionTitles[indexPath.section]
                
                let currentArrayOfDictionary = exercises[currentSectionTitle]!
                
                let exerciseObject = currentArrayOfDictionary[indexPath.row] as Exercise
                
               detailVC.exercise = exerciseObject
            }
        }
    }
    
}


