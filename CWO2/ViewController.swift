//
//  ViewController.swift
//  CWO2
//
//  Created by Pim Praat on 29/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sailornumer = "1"
    let safe = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func les1(_ sender: Any) { safe.set(1, forKey: "CurrentLessonNumber")}
    @IBAction func les2(_ sender: Any) { safe.set(2, forKey: "CurrentLessonNumber")}
    @IBAction func les3(_ sender: Any) { safe.set(3, forKey: "CurrentLessonNumber")}
    @IBAction func les4(_ sender: Any) { safe.set(4, forKey: "CurrentLessonNumber")}
    @IBAction func les5(_ sender: Any) { safe.set(5, forKey: "CurrentLessonNumber")}
    @IBAction func les6(_ sender: Any) { safe.set(6, forKey: "CurrentLessonNumber")}
    @IBAction func les7(_ sender: Any) { safe.set(7, forKey: "CurrentLessonNumber")}
    @IBAction func les8(_ sender: Any) { safe.set(8, forKey: "CurrentLessonNumber")}
    @IBAction func les9(_ sender: Any) { safe.set(9, forKey: "CurrentLessonNumber")}
    @IBAction func les10(_ sender: Any) {safe.set(10, forKey: "CurrentLessonNumber")}
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func gotonotes(_ sender: UIButton) {
    performSegue(withIdentifier: "to_notes", sender: self)
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? NotesViewController {
            destination.sailornumber = sailornumer
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
