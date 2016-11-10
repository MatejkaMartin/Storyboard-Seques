//
//  ViewController.swift
//  StoryBoard-Segue
//
//  Created by Martin Matějka on 24.07.16.
//  Copyright © 2016 Martin Matějka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var label: UILabel!
    
    
    let text = "Ahoj, přišel jsi ze žluté obrazovky"
    var transfer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = transfer
    }
    
    @IBAction func loadBlue(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "goToBlue", sender: text)
    }
    

    @IBAction func loadRed(_ sender: AnyObject) {
        performSegue(withIdentifier: "goToRed", sender: text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destination as? BlueVC {
                if let theString = sender as? String {
                    blueVC.transfer = theString
                }
            }
        } else if segue.identifier == "goToRed" {
            if let redVC = segue.destination as? RedVC {
                if let theString = sender as? String {
                    redVC.transfer = theString
                }
            }
        }
    }
    
    

}

