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
    

    var exercises = ["Lower":[Exercise(title: "Lunges", image: UIImage(named: "2 lunges")!, level: 2, textDescription: "Stand with fit together and then step forward with the right foot, making sure your knee does not go past your toes. Complete 3 sets of 10 repetitions on each side."),
        
        Exercise(title: "Simple Squat", image: UIImage(named: "2 squat")!, level: 2, textDescription: "Stand straight with feet hip-width apart. Slowly lower body as if you are going to take a seat. Return to initial standing posiiton. Complete 3 sets of 15 repetitions"),
        
        Exercise(title: "Jog or Run", image: UIImage(named: "1 running")!, level: 1, textDescription: "Jog or run until slightly out of breath for 10-15 minutes."),
        
        Exercise(title: "Calve Raises", image: UIImage(named: "1 calve-raises")!, level: 1, textDescription: "Stand straight with feet together and slowly roll up onto the balls of your feet. Hold for 3 seconds and lower slowly. Complete 2 sets of 7 repetitions"),
        
        Exercise(title: "Advanced Squats", image: UIImage(named: "3 squat-modified")!, level: 3, textDescription: "Stand straight and then stretch arms out in front of you. Also raise your right leg and then squat down with the left leg. Return to the initial position and repeat on the other side. Complete 2 sets of 10 repetitions"),
        
        Exercise(title: "Step-Ups", image: UIImage(named: "3 step-ups")!, level: 3, textDescription: "Stand straight in front of a step, with no dumbells, or a set of 5lbs dumbells. Step up with your right foot and return to the ground on your left foot. Repeat on the other side. Complete 3 sets of 15 repetitions")],
        
        "Upper": [Exercise(title: "Bent-Over-Row", image: UIImage(named: "1 Bent-Over-Row")!, level: 1, textDescription: "Lean forward at a 45 degree angle, keeping your back straight. Using 3lbs - 5lbs dumbells, slowly pull forearms towards torso. Complete 2 sets of 10 repetitions"),
        
            Exercise(title: "Bicep Curls", image: UIImage(named: "1 bicep-curls")!, level: 1, textDescription: "Using 5lbs-8lbs dumbells, stand with back straight and knees slightly bent. Keep feet hip-width apart and slowly raise forearms towards shoulders and then lower to initial position. Complete 3 sets of 10 repetitions"),
        
            Exercise(title: "Chair Dips", image: UIImage(named: "2 chair-dips")!, level: 2, textDescription: "Place hands on the seat of a chair, maintaining thighs parallel to the ground. Lower torso towards the ground until upper-arms are parallel to the ground. Return to the initial position. Complete 2 sets of 10 repetitions"),
        
            Exercise(title: "Shoulder Raise", image: UIImage(named: "2 shoulder-raise")!, level: 2, textDescription: "Stand with feet hip-width apart, hold 5lbs - 8lbs dumbells next to your shoulders. Raise dumbells over head and then lower to initial position. Complete 3 sets of 10 repetitions"),
        
            Exercise(title: "Lateral Raise", image: UIImage(named: "3 lateral-raise")!, level: 3, textDescription: "Stand with feet hip-width apart, hold 3lbs - 5lbs dumbells next to your shoulders. Raise dumbells to shoulder height and then lower to initial position. Complete 2 sets of 10 repetitions"),
            
            Exercise(title: "Tricep Curls", image: UIImage(named: "3 tricep_curl")!, level: 3, textDescription: "Stand with feet hip-width apart, hold one 3lbs - 5lbs dumbell with both hands over your head with straight arms. Bend arms until forearms are parallel to groung, and return to initial position. Complete 2 sets of 10 repetitions")],
    
        "Core": [Exercise(title: "Push-ups", image: UIImage(named: "1 push-ups")!, level: 1, textDescription: "With arms shoulder-width apart and feet hip-width apart, start from a plank position and gradually lower torso to the ground, subsequently returning to a plank pose.  For an easier version, keep knees together on the ground while performing exercise. Complete 3 sets of 10 repetitions."),
            
            Exercise(title: "Reverse Crunch", image: UIImage(named: "1 reverse-crunch")!, level: 1, textDescription: "Lie on your back and raise your knees so that shins are parallel to the ground. With straight arms on the ground next to torso, pull lower back off of the ground using abdominal muscles. Complete 3 sets of 15 repetitions on each side."),
    
            Exercise(title: "Core Raise", image: UIImage(named: "2 Core-raise")!, level: 2, textDescription: "Lying down with knees raised, lift torso to a 45 degree angle. Lift toes off the groung, then lift left leg off the ground and return to initial position. Repeat on other side. Complete 3 sets of 10 repetitions on each side."),

            Exercise(title: "Dead Lift", image: UIImage(named: "2 dead-lift")!, level: 2, textDescription: "Using 5lbs - 8lbs dumbells, stand straight with feet hip-width apart. With back straight lower torso until parallel to the ground and then return to initial position. Complete 3 sets of 10 repetitions."),
       
            Exercise(title: "Jumping Jacks", image: UIImage(named: "3 jumping-jacks")!, level: 3, textDescription: "Stand with feet together and arms at the side. Then raise arms over head and widen stance while jumping. Return to initial position. Complete 3 sets of 10 repetitions, resting 10 seconds between each set."),
        
        Exercise(title: "Advanced Push-Ups", image: UIImage(named: "3 push-ups-modified")!, level: 3, textDescription: " Start from plank pose holding 5lbs- 8lbs dumbells. Complete a regular push-up and then return to plank pose, lifting one arm holding the dumbell, and then do the same with the other arm and restart. Complete 3 sets of 10 repetitions.")]]
    
    var sectionTitles = ["Lower", "Upper", "Core"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
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
        
        let exerciseObject = currentArrayOfDictionary[indexPath.row] as Exercise
        
        cell.textLabel?.text = exerciseObject.title
        
        cell.textLabel?.textColor = UIColor(white: 1, alpha: 2)
        
        if exerciseObject.level == 1 {
            cell.backgroundColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1)
        } else if exerciseObject.level == 2 {
            cell.backgroundColor = UIColor(red: 26/255, green: 188/255, blue: 156/255, alpha: 1)
        } else {
            cell.backgroundColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1)
        }

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


