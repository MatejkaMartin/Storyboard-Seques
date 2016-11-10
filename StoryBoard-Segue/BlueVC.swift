//
//  BlueVC.swift
//  StoryBoard-Segue
//
//  Created by Martin Matějka on 24.07.16.
//  Copyright © 2016 Martin Matějka. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    var transfer: String = ""
    let str = "Přišel jsi z modré obazovky"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        text.text = transfer
    }
    
    @IBAction func loadYellow(_ sender: AnyObject) {
        performSegue(withIdentifier: "goToYellow", sender: str)
        
    }
    @IBAction func loadRed(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "goToRed", sender: str)
    }
    @IBAction func back(_ sender: AnyObject) {
        if text.text == "Přišel jsi z červené obrazovky" {
            performSegue(withIdentifier: "goToRed", sender: str)
        } else {
            performSegue(withIdentifier: "goToYellow", sender: str)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToRed" {
            if let redVC = segue.destination as? RedVC {
                if let theString = sender as? String {
                    redVC.transfer = theString
                }
            }
        } else if segue.identifier == "goToYellow" {
            if let yellowVC = segue.destination as? ViewController {
                if let theString = sender as? String {
                    yellowVC.transfer = theString
                }
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
