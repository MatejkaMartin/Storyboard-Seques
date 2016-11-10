
//
//  RedVC.swift
//  StoryBoard-Segue
//
//  Created by Martin Matějka on 24.07.16.
//  Copyright © 2016 Martin Matějka. All rights reserved.
//

import UIKit

class RedVC: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    var transfer: String = ""
    let str = "Přišel jsi z červené obrazovky"
    
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
    
    @IBAction func loadBlue(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "goToBlue", sender: str)
        
    }
    @IBAction func back(_ sender: AnyObject) {
        if text.text == "Ahoj, přišel jsi ze žluté obrazovky" {
            performSegue(withIdentifier: "goToYellow", sender: str)
        } else {
            performSegue(withIdentifier: "goToBlue", sender: str)
        }
    }
    
    @IBAction func loadYellow(_ sender: AnyObject) {
        performSegue(withIdentifier: "goToYellow", sender: str)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destination as? BlueVC {
                if let theString = sender as? String {
                    blueVC.transfer = theString
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
