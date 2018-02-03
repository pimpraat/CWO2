//
//  NotesViewController.swift
//  CWO2
//
//  Created by Pim Praat on 29/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {
    
    var sailornumber:String?

    @IBOutlet weak var notefield: UITextView!
    let safe = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NSLog(sailornumber!);
        
        let key = safe.string(forKey: "CurrentSailorNumber")! + "notes"
        
        notefield.text = safe.string(forKey: key)
    }
    @IBAction func back(_ sender: Any) {
         let key = safe.string(forKey: "CurrentSailorNumber")! + "notes"
        safe.set(notefield.text, forKey: key)
    }
    
    @IBAction func save(_ sender: Any) {
        // Save in NSUserdefaults for current sailornumber
         let key = safe.string(forKey: "CurrentSailorNumber")! + "notes"
        
        safe.set("Notities over de zeiler, evt per les", forKey: key)
        if let name = safe.string(forKey: key) {
            //use the name variable here
            notefield.text = name
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
