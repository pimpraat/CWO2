//
//  SettingsViewController.swift
//  CWO2
//
//  Created by Pim Praat on 03/02/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Shows when 3 times round swipe
    
    /*
     Backup:
     for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
     print("\(key) = \(value) \n")
     }
     
     
     
     
     Delete all data:
     NSUserDefaults.standardUserDefaults().removePersistentDomainForName(NSBundle.mainBundle().bundleIdentifier!)
     NSUserDefaults.standardUserDefaults().synchronize()
 
     */
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
