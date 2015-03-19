//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var keyEntered: UITextField!
    @IBOutlet weak var valueEntered: UITextField!
    
    //var storage = NSUserDefaults.standardUserDefaults()
    
    //let storageKey = "listOfValues"
    
    var listOfValues = [String: String]()

    /*    get {
            var storedValue = storage.dictionaryForKey(storageKey) as [String: String]?
            if storedValue == nil {
                return [String: String]()
            } else {
                return storedValue!
            }
        }
        
        set {
            storage.setObject(newValue, forKey: storageKey)
        }
    }*/

    func tableView(tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfValues.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    var cell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell
        //var newKey = keyEntered.text
        cell.textLabel?.text = "value: " + listOfValues[keyEntered.text]! + "key: \(keyEntered.text)"
        return cell
    }
    
    func textFieldShouldReturn(textfield: UITextField) -> Bool {
        if valueEntered.text == "" {
            return false
        } else {
            var previousPair = listOfValues.updateValue(valueEntered.text, forKey: keyEntered.text)
            tableView.reloadData()
            return true
        }
    }
}

        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.*/